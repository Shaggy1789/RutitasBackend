# DevSecOps CI/CD — Rutitas backend

Pipeline real en `.github/workflows/`: `api-ci.yml` (.NET 10 build/test + Semgrep + Gitleaks), `api-codeql.yml`, `api-nightly.yml` (NuGet audit + tests), `api-cd.yml` (ejecución **manual** de tests/build/Trivy/SBOM, **sin despliegue remoto**) y Dependabot.

## Puertas de calidad propuestas
- Compilación sin errores ni warnings.
- Pruebas automatizadas al 100% exitosas.
- Ausencia de secretos confirmados o vulnerabilidades HIGH/CRITICAL nuevas.
- Cobertura >=45% como **meta**, no declarada alcanzada.
- DAST OWASP ZAP en staging autorizado antes de producción; no es parte de CI normal.
- Stryker.NET: evaluación informativa optativa `dotnet tool restore` y `dotnet stryker` desde proyecto de pruebas compatible; verificar versión y costo.
- NBomber/performance, disponibilidad multi-réplica y recuperación Redis: **pendiente** porque falta ambiente de ensayo y/o Redis.

## Antes de habilitar CD Azure Container Apps
1. Ratificar Azure como proveedor (el proyecto antes contempló Google Cloud Run, no hay decisión definitiva).
2. Crear recursos Azure con cuenta autorizada y presupuesto; credenciales OIDC con privilegio mínimo.
3. Configurar secretos en Key Vault / secret management y salida de red MongoDB Atlas.
4. Desplegar en staging + health-check / contrato / OWASP ZAP con autorización.
5. Aprobar entorno de producción, versionar imagen y establecer rollback.

**No se implementa Cosmos DB ni Redis sin aprobación**: el backend usa MongoDB Atlas y el documento adjunto es una *propuesta* que incluye funcionalidades futuras no presentes en los siete endpoints.
