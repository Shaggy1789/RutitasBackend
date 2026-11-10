# Matriz de pruebas ajustada a los siete endpoints existentes

| Id del plan | Endpoint | Suite automatizada | Verificación |
|---|---|---|---|
| UT-001/002 | registro | UnitTests | email y contraseña inválidos; sin política institucional definida todavía |
| UT-003 | login | UnitTests | contraseña incorrecta / JWT válido |
| UT-004 | logout | UnitTests y IntegrationTests | guardar revocación, impedir reutilización |
| UT-005 | perfil | UnitTests | limitar actualización a campos permitidos |
| IT-001 | registro/login | IntegrationTests | alta, login y perfil sin red externa |
| IT-002 | sesión | IntegrationTests | JWT revocado |
| IT-005 | lectura rutas | IntegrationTests | consulta paginada y detalle con repositorio falso |
| SEC-001/002 | perfiles/rutas | SecurityTests | sin JWT, con JWT falso |
| SEC-007 | login | HTTP manual / rate limiter | 429 tras intentos repetidos |
| SEC-008 | búsqueda | UnitTests y revisión repositorio | validaciones y regex escapada |
| SEC-009 | perfil/registro | SecurityTests | rechazo cambio role; registro fuerza role user |
| CONTRACT-002 | /v1 | ContractTests | rutas/versionado existentes |

Los IDs originales para reservas, aprobación de conductores, Redis y Cosmos DB son **no aplicables todavía**, pues tales módulos no existen. Se conservan como criterios futuros no ejecutados. `dotnet test` no valida conectividad a Atlas real; pruebas con Atlas deben ejecutarse expresamente en ambiente aislado. Cobertura inicial objetivo >=45%, **sin evidencia de cumplimiento hasta ejecutar los tests**.
