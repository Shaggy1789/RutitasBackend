# Matriz de pruebas xUnit — siete endpoints Rutitas

Se mantienen **exactamente 7 endpoints de negocio**, sin implementar E18–E21.
Hay **3 proyectos de pruebas** separados, cada uno cubre los 7 endpoints.
Las pruebas anteriores también se conservan.

| Endpoint | Unitarias (ControllerUnitTests + EndpointUnitCoverageTests) | Integración HTTP (EndpointIntegrationTests) | Seguridad HTTP (EndpointSecurityTests) |
|---|---|---|---|
| POST /api/v1/auth/register | UT_AuthEndpoint / Register_* | IT_01 | SEC_01 |
| POST /api/v1/auth/login | UT_AuthEndpoint / Login_* | IT_02 | SEC_02 |
| GET /api/v1/users/me | UT_ProfileEndpoint / GetMe_* | IT_03 | SEC_03 |
| PATCH /api/v1/users/me | UT_ProfileEndpoint / UpdateMe_* | IT_04 | SEC_04 |
| POST /api/v1/auth/logout | UT_AuthEndpoint / Logout_* | IT_05 | SEC_05 |
| GET /api/v1/routes | UT_ListRoutes / Routes_* | IT_06 | SEC_06 |
| GET /api/v1/routes/{id} | UT_RouteDetail / RouteById_* | IT_07 | SEC_07 |

## Ejecutar con .NET 10

Abrir `Rutitas.Api/Rutitas.Api.slnx`. En PowerShell desde la carpeta de esa solución:

```powershell
dotnet restore Rutitas.Api.slnx
dotnet build Rutitas.Api.slnx -c Release
dotnet test tests/Rutitas.UnitTests/Rutitas.UnitTests.csproj -c Release --logger "trx;LogFileName=unit.trx"
dotnet test tests/Rutitas.IntegrationTests/Rutitas.IntegrationTests.csproj -c Release --logger "trx;LogFileName=integration.trx"
dotnet test tests/Rutitas.SecurityTests/Rutitas.SecurityTests.csproj -c Release --logger "trx;LogFileName=security.trx"
```

## Límites y seguridad

- Los tests unitarios **no requieren MongoDB**.
- Los tests HTTP utilizan `TestApiFactory` y repositorios en memoria; no acceden a Atlas.
- **Aún falta** un conjunto de integración **con MongoDB real aislado** (Testcontainers), validar índices, filtros reales y concurrencia; no confundir los dobles con integración de persistencia.
- No se ejecutaron tests ni se certifica cobertura en este entorno: falta SDK .NET 10 aquí.
- La prueba de ruta válida usa una ruta sintética y no verifica permisos de conductor, ya que los endpoints E18–E21 aún no existen.
- Ejecutar primero la compilación; si existen errores, corregirlos antes de considerar el paquete entregable.
