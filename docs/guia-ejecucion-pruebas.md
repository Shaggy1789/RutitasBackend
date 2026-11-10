# Cómo ejecutar y entregar evidencias al profesor

1. Abrir `Proyecto Rutitas/Backend/Rutitas.Api/Rutitas.Api.slnx` en Visual Studio 2026 con .NET 10.
2. Restaurar paquetes NuGet de toda la solución.
3. Menú Prueba > Explorador de pruebas > Ejecutar todas. Las suites `UnitTests`, `IntegrationTests`, `SecurityTests`, `ContractTests` y `ArchitectureTests` **no usan Atlas**.
4. Alternativa PowerShell desde la carpeta de solución:

   ```powershell
   dotnet restore Rutitas.Api.slnx
   dotnet build Rutitas.Api.slnx -c Release
   dotnet test Rutitas.Api.slnx -c Release --collect:"XPlat Code Coverage" --logger trx
   ```

5. Capturar total de aprobadas/fallidas, cobertura y hash de commit. No presentar salidas esperadas como resultados reales.
6. Para ensayo real en desarrollo, iniciar API de forma separada con Atlas y ejecutar `Rutitas.Api/Rutitas.Api.http`, usando solo cuenta de prueba; ocultar JWT/cadena de conexión. El logout debe ser el último.
7. En GitHub, crear PR a `main`, revisar pestaña Actions y adjuntar artefactos TRX/coverage; los checks requieren repositorio compatible y permisos para CodeQL.

Las pruebas integradas sustituyen repositorios en memoria y establecen entorno `Testing` para omitir creación de índices Atlas. Eso NO valida operaciones Mongo reales ni infraestructura Azure.
