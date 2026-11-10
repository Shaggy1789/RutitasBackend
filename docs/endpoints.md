# Rutitas — contrato de los 7 endpoints (estado actual)
Base `/api/v1`; JSON camelCase; HTTPS para despliegues. Autenticación Bearer JWT (30 min).

| # | Método | Ruta | JWT | Resultado normal |
|---|---|---|---|---|
| 1 | POST | /auth/register | no | 201 |
| 2 | POST | /auth/login | no | 200 |
| 3 | GET | /users/me | sí | 200 |
| 4 | PATCH | /users/me | sí | 200 |
| 5 | POST | /auth/logout | sí | 204 |
| 6 | GET | /routes?page=1&pageSize=20&q= | sí | 200 |
| 7 | GET | /routes/{id} | sí | 200 |

Excepciones: 400 validación, 401 autenticación, 404 ruta ausente, 409 email duplicado, 429 limitación, 503 si falla la revocación de sesión. Registro/login limitados a 5 peticiones por IP por minuto; consulta de listado de rutas 60/min por IP.

**Importante:** No existe todavía API para reservas, conductores, vehículos, administración de archivos ni notificaciones. No declarar esas pruebas como aprobadas. La aplicación usa MongoDB Atlas, no Azure Cosmos DB.
