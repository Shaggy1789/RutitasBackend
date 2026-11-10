# Memoria de trabajo — Rutitas Backend

**Estado:** preparación documental de arquitectura base e incremento Unidad II para revisión docente. Constitución, AGENTS y `001-unit2-api` propuestos, **no ratificados**.

**Origen:** separación del paquete conjunto `Proyecto Rutitas.zip` entregado para esta tarea.

**Alcance:** proyecto Backend únicamente.

## Actividad documental registrada

1. Se utilizó como fuente la Constitución conjunta candidata de Rutitas y se creó una Constitución autónoma para Backend, manteniendo los 13 principios generales y delimitando su ámbito.
2. Se adaptó AGENTS a este proyecto y se separó la memoria factual.
3. Se conservaron los 11 requisitos, plan y 7 tareas futuras de arquitectura base extraídos de `Backend/arquitectura-base/` de la entrega previa; esa ruta histórica no está incluida en este paquete.
4. Se prepararon definiciones **documentales** de cinco subagentes y cinco skills propias.
5. Se crearon fuentes, estados, decisiones, trazabilidad, integración propuesta y matriz de alineación para que este paquete sea autocontenido.
6. Se creó el repositorio Git local y el commit `8286c36` como respaldo verificable anterior a esta reorganización; los cambios documentales posteriores no están confirmados en Git.
7. Se migraron los cinco subagentes y cinco skills a `.opencode/` con permisos de solo lectura; no se invocaron para ejecutar tareas.
8. Se normalizaron estados, trazabilidad requisito-plan-tarea, referencias locales y el registro de decisiones sin aprobar decisiones humanas.

## Corrección de auditoría (2026-11-03)

- Se corrigieron hallazgos documentales AUD-01..AUD-20 sin aprobar decisiones ni ejecutar tareas.
- Se denegó `websearch` en la configuración y en los cinco agentes, además de `webfetch` y `bash`.
- Se añadieron actores genéricos, supuestos y criterios `AC-BE-01..05` a la spec; se reforzó la trazabilidad y se evitó inventar probabilidades de riesgo.
- Se precisaron las dependencias de `BE-AB-07` con `BACKEND-D06` y el acuerdo de integración.
- Antes de editar se creó un respaldo externo; el commit `8286c36` sigue siendo un snapshot anterior.

## Transición a Unidad II (2026-11-03)

- Se creó el respaldo `Rutitas_Backend_backup_20261103-230420.zip` en el directorio temporal externo aprobado, antes de editar.
- Se registró la instrucción de Unidad II (3–4 nov 2026) comunicada por el usuario en `docs/fuentes-consultadas.md`; la fuente primaria/acta sigue pendiente (`BE-PEND-01`, `BACKEND-D12`).
- Se aplicaron enmiendas mínimas de fase en `.specify/memory/constitution.md` y su espejo `constitution.md`, y en `AGENTS.md`. La Constitución y AGENTS siguen `PENDIENTE_RATIFICACION`; no se declaró ratificación.
- Se creó `specs/001-unit2-api/` con `spec.md`, `plan.md`, `task.md` y `contracts/openapi.yaml`. Los 7 endpoints, modelos MongoDB, JWT, pruebas, CI/CD y despliegue planificado quedan en estado propuesto/experimental.
- Se registró la dirección ASP.NET Core 10/C# + MongoDB + JWT como propuesta del equipo; `BACKEND-D05` sigue pendiente de ADR y ratificación formal. Cloud sigue sin seleccionar (`BACKEND-D09`).
- Se añadieron `BACKEND-D09` a `BACKEND-D13` para cloud, logout, visibilidad de rutas, fuente docente y plataforma del cliente.
- Se crearon `docs/APR-U2-001.md` y `docs/ADR-001-stack.md` como propuestas sin firmas para el Gate 0; no ratifican stack, contrato ni código.
- Se corrigió `specs/001-unit2-api/task.md`: `D08` en dos etapas, aprobación inicial/final del contrato (`BE-U2-05A`) y aceptación local/staging (`BE-U2-18`/`BE-U2-20`). Se conservaron los IDs existentes.
- `specs/000-arquitectura-base/` y las tareas `BE-AB-01..07` no se modificaron.
- No se implementó código, no se ejecutaron pruebas/builds y no se desplegó ni creó ningún recurso cloud.
- Se reutilizaron los procedimientos y criterios de los skills existentes para estructurar y validar `001`; no se invocaron subagentes porque su ámbito local sigue limitado a `000`.

## Revisión documental Unidad II (2026-11-04)

- Se revisaron `APR-U2-001`, `ADR-001`, `spec.md`, `plan.md`, `task.md` y OpenAPI; no se aprobaron decisiones ni se ejecutaron tareas.
- `BE-U2-02`, `BE-U2-04`, `BE-U2-05` y `BE-U2-06` tienen revisión documental preparatoria; sus estados formales siguen `no_iniciado` porque Gate 0-A no está firmado.
- `BE-U2-03` y `BE-U2-05A` quedan bloqueadas: requieren acuerdo/confirmación de Móvil (`D06-A`, `D13`) y aprobación final (`D06-B`).
- Se preparó [revision-openapi-movil.md](docs/revision-openapi-movil.md) para la revisión de Móvil; no es aprobación ni contrato vinculante.
- Validación documental: OpenAPI 3.1 con 7 operaciones y 6 rutas; cobertura `RF-U2`/`AC-U2`; dependencias de tareas sin ciclos; enlaces locales sin roturas.
- Hallazgo `BE-PEND-07`: aclarar la semántica de logout (`204` idempotente frente a `401` con token revocado) antes de `BE-U2-10`.
- No se creó código, no se ejecutaron builds/pruebas de producto, no se desplegó y no se crearon recursos cloud.

## Verificación de aprobaciones Gate 0 (2026-11-04)

- Se revisaron `APR-U2-001`, `ADR-001`, `decisiones-pendientes`, `task.md` y `revision-openapi-movil`. No consta acta ni firma; el Project Lead reportó el consentimiento de roles y confirmó `D02`.
- `D02`: **APROBADO** (2026-11-04) por Mark Alan: URL canónica, `main`, `develop`, `feature/*` y Project Lead/Release. Verificación remota de solo lectura: `main` existe (`d18ff91`); `develop` y `feature/*` no se observaron; protección de ramas, permisos de escritura y flujo de PR no verificados.
- `D03`: **APROBADO POR REPORTE** (2026-11-04). Mark Alan confirma su rol y la aceptación de David Rafael, Ulises Gonzales y America Cristal. No hay firma individual ni acta; autoridad académica y suplentes siguen pendientes.
- Gate 0-A: **PENDIENTE**. `D02` y `D03` están aprobados; `D01` y `D04–D13` siguen `propuesto`; las firmas de etapa A siguen `PENDIENTE`.
- Gate 0-B: **PENDIENTE**. No hay ratificación de `D05`, aprobación `D06-B`, cierre de `BE-U2-05A`/`BE-U2-06` ni firmas `D08-B`.
- `BE-U2-05A` y `BE-U2-06` siguen `propuesto` / `no_iniciado` / `no_ejecutada`; el paquete OpenAPI es un borrador sin aprobación.
- `BE-U2-07` no está autorizada: faltan `BE-U2-06`, la verificación operativa de `D02` y `D08-B`, además de Gate 0-A/0-B.
- Se actualizaron `D02` y `D03`; los demás estados de decisión no cambiaron. No se creó código ni se autorizó cloud o despliegue.

## Preparación D04/D05 (2026-11-04)

- Se revisaron el baseline NFR de `APR-U2-001` §5 y `ADR-001`; se prepararon filas de confirmación para Mark Alan, David Rafael y Ulises Gonzales en `APR-U2-001` §11.
- Mark Alan confirmó `D04` y `D05` directamente; David Rafael y Ulises Gonzales confirmaron ambos según reporte del Project Lead, sin mensajes originales, fecha ni condiciones documentadas.
- `D04` y `D05` siguen `propuesto`, sin aprobación formal ni firmas: `D04` requiere revisión técnica documentada de David; `D05`, ratificación formal de `ADR-001` y mensajes originales de David/Ulises.
- No cambian Gate 0-A/0-B; `BE-U2-07` sigue no autorizada. No se creó código ni se autorizó cloud o despliegue.

## Qué NO se realizó

- No se ejecutó ninguna de las siete tareas de `000`. Todos sus estados siguen ejecución=`no_iniciado`, verificación=`no_ejecutada`, aprobación pendiente.
- No se ejecutó ninguna tarea de `001`; todas siguen `propuesto` / `no_iniciado` / `no_ejecutada`.
- No se implementó software, ni se crearon funcionalidades, endpoints, modelos ejecutables o pantallas específicas.
- No se invocaron subagentes, skills ni herramientas para ejecutar tareas; la configuración OpenCode añadida es documental y de solo lectura.
- No se ejecutaron tests, builds, instalaciones, despliegues ni creación de recursos cloud para este paquete documental.

## Antecedentes, no resultados de esta entrega

Los informes previos reportaron 83 pruebas de una aplicación experimental RU-03 en Fase 4.1; no pertenecen a esta entrega académica. La candidata móvil React/TypeScript/Vite/Capacitor no acredita una elección oficial de stack; la instrucción actual identifica un cliente Kotlin Android, discrepancia registrada en `BE-PEND-06`/`BACKEND-D13`. Los ejemplos académicos de Kotlin, .NET y AWS no se consideran decisiones adoptadas por sí mismos.

## Decisiones pendientes y próxima actividad

`D02` y `D03` quedaron aprobados por confirmación del Project Lead; faltan firmas, autoridad académica y verificar/crear `develop` y protecciones de ramas. Ratificar la Constitución y AGENTS, resolver `BACKEND-D05` (stack formal), `BACKEND-D06` (contrato con Móvil), `BACKEND-D09` (cloud), `BACKEND-D10` (logout), `BACKEND-D11` (rutas), `BACKEND-D12` (fuente docente) y `BACKEND-D13` (plataforma cliente); confirmar autoridad, repositorio y presupuesto. Revisar `001-unit2-api` con el equipo/docente y completar la revisión OpenAPI de Móvil ([paquete](docs/revision-openapi-movil.md)). La implementación sigue bloqueada hasta autorización humana registrada. Persisten las inconsistencias en [este reporte](docs/inconsistencias-pendientes.md).

Fuentes detalladas: [documentos consultados](docs/fuentes-consultadas.md). Arquitectura base: [spec](specs/000-arquitectura-base/spec.md), [plan](specs/000-arquitectura-base/plan.md), [task](specs/000-arquitectura-base/task.md). Incremento Unidad II: [spec](specs/001-unit2-api/spec.md), [plan](specs/001-unit2-api/plan.md), [task](specs/001-unit2-api/task.md), [OpenAPI](specs/001-unit2-api/contracts/openapi.yaml). Gate 0: [APR-U2-001](docs/APR-U2-001.md), [ADR-001](docs/ADR-001-stack.md).
