# Matriz SDD mínima del incremento 001-unit2-api

| Requisito observable (módulo) | Control implementado | Prueba | Evidencia a generar |
|---|---|---|---|
| Registro autenticado / datos válidos | AuthController.Register | Register_*, RegistrationAndLoginAndProfile_Work | TRX y captura |
| Acceso a sesión | AuthController.Login | Login_*, RegistrationAndLoginAndProfile_Work | TRX |
| Revocación de sesión | AuthController.Logout | Logout_*, LogoutRevokesJwt | TRX |
| Consulta y actualización propia | UsersController | GetMe_*, UpdateMe_*, EscalationByMassAssignment_IsRejected | TRX |
| Consulta de rutas | RoutesController | Routes_*, RoutesListAndDetailsWork | TRX |
| Detalle de ruta | RoutesController | RouteById_*, RoutesListAndDetailsWork | TRX |
| JWT requerido | Authorize | ProtectedEndpoint_RequiresToken, ForgedJwt_IsRejected | TRX |
| Límites de uso | RateLimiter | LoginRateLimit_RejectsSixthRequest | TRX |
| Arquitectura separada | Domain/Application | LayerTests | TRX |
| Contrato /v1 | rutas en Controllers | RouteContractTests | TRX |

No se añadió alcance de reservas/conductores/Redis/Cosmos/Azure. Los nuevos archivos de control de calidad son propuestas de fortalecimiento del backend. Requieren revisión humana frente a `constitution.md` y `specs/001-unit2-api/` antes de ratificarlos.
