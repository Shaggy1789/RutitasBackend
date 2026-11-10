# Brechas entre la propuesta DevSecOps y el alcance autorizado

**Implementado en esta entrega:** suites unitarias, integración HTTP con repositorios en memoria, pruebas de seguridad y contratos, pruebas de capas, 7 contratos originales, rate limit de consultas de rutas, CI (SAST/SCA/secretos/tests), Docker/Trivy/SBOM manual, Dependabot, guías y matrices SDD.

**No implementado ni declarado funcional:** 52 endpoints, reservas, control de asientos concurrentes, conductores/vehículos, publicación/cancelación de rutas, verificación institucional obligatoria, moderación, archivos, cuentas eliminadas, notificaciones, Redis, Cosmos DB Emulator, transacciones Cosmos, multi-réplica de Azure, despliegue en Azure, rollback remoto, 50 usuarios concurrentes, p95 de rendimiento, DAST real, Stryker ejecutado y metas de cobertura medidas.

**Razones:** el usuario solicitó conservar los 7 endpoints existentes; introducir esas funcionalidades altera el contrato móvil y requiere decisiones SDD, modelos, permisos, infraestructura, presupuesto y credenciales externas. El texto de referencia las describe como **propuesta**, no implementación ya existente. Sin Docker/.NET/runtime Azure disponibles aquí, no se puede garantizar compilación o resultado de pipelines; realizar validaciones en Visual Studio/GitHub.

Plan de seguimiento al aprobar nuevas funcionalidades: especificar reglas y contratos, revisar constitución, añadir modelos y repositorios, pruebas de concurrencia/seguridad, después habilitar infraestructura e integración móvil.
