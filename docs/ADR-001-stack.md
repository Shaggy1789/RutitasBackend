# ADR-001 — Stack propuesto para `001-unit2-api`

> **Estado:** `propuesto` · **NO RATIFICADO** · **No autoriza código, cloud ni gasto.**
> **Fecha:** 2026-11-03
> **Decisores:** David Rafael (Backend/Technical), Ulises Gonzales (Security/Privacy) y Mark Alan (Release); confirmaciones reportadas (Mark directa; David/Ulises por el Project Lead), ratificación formal `PENDIENTE` (registro en [APR-U2-001](APR-U2-001.md) §11).
> **Relacionados:** `BACKEND-D05`, `D06`, `D07`, `D09`, `D10`, `D11`, `D13`; [PLAN-U2-API](../specs/001-unit2-api/plan.md); [SPEC-U2-API](../specs/001-unit2-api/spec.md).

## 1. Contexto

`001-unit2-api` documenta 7 endpoints de autenticación, perfil y consulta de rutas para la Unidad II. La dirección registrada propone ASP.NET Core 10/C#, MongoDB, JWT y OpenAPI 3.1. No existe implementación de esta API; el repositorio canónico está confirmado, pero la ratificación humana, la política de ramas, el contrato con Móvil y la nube siguen pendientes.

Este ADR registra una **propuesta técnica**. No reemplaza `D05`, no convierte ejemplos académicos en decisiones y no demuestra disponibilidad del SDK ni del servicio MongoDB.

## 2. Decisión propuesta

| Elemento | Propuesta | Estado |
|---|---|---|
| Runtime | ASP.NET Core 10 / C# | Dirección de Unidad II; pendiente `D05` |
| Persistencia | MongoDB 8 local; MongoDB Atlas M0 solo si se aprueba `D09` | Propuesto; pendiente `D05`/`D09` |
| Autenticación | JWT Bearer de acceso, vida propuesta de 30 minutos, revocación por `jti` | Propuesto; pendiente `D07`/`D10` |
| Contrato | OpenAPI 3.1, base `/api/v1`, errores RFC 9457 | Propuesto; pendiente `D06` |
| Arquitectura | Monolito modular: API, Application, Domain, Infrastructure y tests | Propuesto; proporcional a 7 endpoints |
| Pruebas | xUnit, FluentAssertions, `WebApplicationFactory`, Testcontainers Mongo | Propuesto; pendiente `D07` |
| CI/CD | GitHub Actions con gates de build, pruebas, cobertura y escaneos; despliegue manual | Propuesto; cloud pendiente `D09` |
| Nube | AWS, Azure o GCP; sin seleccionar | No autorizada; no se crean recursos |

La implementación prevista usa cuatro proyectos de producción y tres de pruebas, con dependencias `Api -> Application -> Domain` y `Infrastructure -> Application/Domain`. Los controladores no acceden directamente a MongoDB ni contienen reglas de dominio.

## 3. Alternativas consideradas

| Alternativa | Ventajas potenciales | Costos/riesgos | Motivo de no selección en esta propuesta |
|---|---|---|---|
| ASP.NET Core 10 + MongoDB + JWT + OpenAPI | Un solo runtime C#, autenticación y OpenAPI integrados, documentos flexibles | .NET 10 y MongoDB deben verificarse; esquema flexible exige validación estricta | Es la dirección registrada para Unidad II, sujeta a `D05` |
| Kotlin/Spring Boot + MongoDB | Afinidad con el cliente Kotlin propuesto | Duplica stack y experiencia requerida; no hay decisión de backend Kotlin | No seleccionada; `D13` no confirma plataforma |
| Node/NestJS + PostgreSQL | Ecosistema amplio y modelo relacional | Cambia stack, persistencia y contrato; no hay evidencia de decisión | No seleccionada; no reemplaza `D05` |
| ASP.NET Core + PostgreSQL | Integridad relacional y SQL maduro | Contradice la persistencia propuesta y exige otro mapeo | No seleccionada; requiere nueva decisión |
| Cookies de sesión en lugar de JWT | Revocación centralizada más simple | Menos adecuado para cliente móvil y API stateless propuesta | No seleccionada; `D10` decide la revocación |
| OpenAPI manual en lugar de contrato primero | Menos tooling inicial | Deriva entre contrato e implementación | No seleccionada; el contrato se valida en CI |

La comparación es cualitativa y no incluye benchmarks, costos cloud ni pruebas de carga. Cualquier cambio de alternativa requiere actualizar este ADR y `D05`.

## 4. Consecuencias

### Positivas

- Un lenguaje principal y tipado para API, dominio, pruebas y herramientas.
- Integración directa con JWT Bearer, ProblemDetails, OpenAPI y `WebApplicationFactory`.
- MongoDB permite iterar el catálogo de rutas con documentos y seed sintético.
- La arquitectura modular mantiene límites claros sin introducir microservicios.

### Negativas y riesgos

- .NET 10 y MongoDB 8 deben confirmarse en el entorno local antes de `BE-U2-07`.
- La flexibilidad de MongoDB exige JSON Schema, índices y pruebas de validación.
- La denylist `jti` añade estado y TTL; `D10` debe aprobarla.
- La firma HS256/RS256, el hash de contraseña y los parámetros de seguridad dependen de `D07`.
- El proveedor cloud y el presupuesto siguen abiertos; no se planifica staging como hecho.
- La plataforma Kotlin no está confirmada (`D13`); el contrato final no está aprobado (`D06`).

## 5. NFR y controles asociados

El baseline no funcional, los controles de seguridad y los roles propuestos se detallan en [APR-U2-001](APR-U2-001.md), secciones 5 a 7. Este ADR no los declara implementados.

Resumen de condiciones:

- Cobertura ≥80% en aplicación/dominio y 100% de rutas críticas de autenticación.
- Errores sin stack traces, secretos fuera del repositorio y logs sin tokens ni PII.
- HTTPS/HSTS, CORS por allowlist, rate limiting y validación en el borde.
- OpenAPI 3.1 validado en CI y revisado con el cliente móvil.
- Staging solo con `D09` y presupuesto aprobado.

## 6. Condiciones de aprobación

- Etapa A de [APR-U2-001](APR-U2-001.md): aceptar la dirección y autorizar la redacción del ADR/contrato inicial.
- Etapa B: ratificar este ADR (`D05`, registro en [APR-U2-001](APR-U2-001.md) §11), aprobar el OpenAPI final (`D06`/`BE-U2-05A`) y firmar `D08-B`.
- Confirmaciones de Mark, David y Ulises reportadas; faltan mensajes originales, fecha, condiciones y ratificación formal documentada.
- Antes de `BE-U2-07`: confirmar SDK .NET 10, MongoDB local, aceptación de la política de ramas, aceptación de roles y configuración OpenCode de implementación.
- `D09`, `D10` y `D11` conservan gates separados y no se aprueban por este ADR.

## 7. Trazabilidad

- Requisitos: `RF-U2-01..07`, `AC-U2-09..12`.
- Plan: [plan.md](../specs/001-unit2-api/plan.md), secciones 1–9 y 10.
- Tareas: [task.md](../specs/001-unit2-api/task.md), `BE-U2-02`, `BE-U2-07..15`, `BE-U2-19`.
- Decisiones: [decisiones-pendientes.md](decisiones-pendientes.md), `BACKEND-D05`, `D06`, `D07`, `D09`, `D10`, `D11`, `D13`.
- Aprobación: [APR-U2-001.md](APR-U2-001.md), etapas A y B.

**Este ADR permanece propuesto hasta que exista una ratificación humana identificable.**
