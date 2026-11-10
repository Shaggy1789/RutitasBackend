# Matriz de alineación documental — Rutitas Backend

**Marco de revisión:** P01–P13 de la Constitución candidata del proyecto Backend; no equivale a ratificación ni a implementación.

| Artefacto | Principios relacionados | Estado | Verificación documental |
|---|---|---|---|
| [AGENTS.md](../AGENTS.md) | P01, P02, P12, P13 | Propuesto | Alineación pendiente de aprobación docente; sin ejecución |
| [memoria.md](../memoria.md) | P02, P03, P04, P06, P09 | Propuesto | Alineación pendiente de aprobación docente; sin ejecución |
| [constitution.md](../.specify/memory/constitution.md) | P02, P03, P04, P06, P09 | Propuesto | Alineación pendiente de aprobación docente; sin ejecución |
| [spec.md](../specs/000-arquitectura-base/spec.md) | P02, P03, P04, P06, P09 | Propuesto | Alineación pendiente de aprobación docente; sin ejecución |
| [plan.md](../specs/000-arquitectura-base/plan.md) | P02, P03, P04, P06, P09 | Propuesto | Alineación pendiente de aprobación docente; sin ejecución |
| [task.md](../specs/000-arquitectura-base/task.md) | P02, P03, P04, P06, P09 | Propuesto | Alineación pendiente de aprobación docente; sin ejecución |
| [001 spec](../specs/001-unit2-api/spec.md) | P01, P02, P04, P06, P07, P09 | Propuesto | Incremento Unidad II documentado; sin ejecución |
| [001 plan](../specs/001-unit2-api/plan.md) | P03, P04, P06, P09, P10, P11 | Propuesto | Stack/nube/controles propuestos; sin ejecución |
| [001 task](../specs/001-unit2-api/task.md) | P01, P02, P09, P13 | Propuesto | Tareas `BE-U2-*` sin iniciar |
| [001 OpenAPI](../specs/001-unit2-api/contracts/openapi.yaml) | P04, P06, P09 | Propuesto | Contrato no vinculante; pendiente `D06` |
| [Revisión OpenAPI Móvil](../docs/revision-openapi-movil.md) | P04, P06, P09 | Propuesto | Revisión preparada; sin aprobación ni firma |
| [APR-U2-001](../docs/APR-U2-001.md) | P01, P02, P06, P09, P12 | Propuesto | Registro sin firmas; no autoriza código |
| [ADR-001](../docs/ADR-001-stack.md) | P03, P04, P06, P09 | Propuesto | Stack no ratificado; pendiente `D05` |
| [OpenCode](../opencode.json) | P02, P06, P12, P13 | Propuesto | Permisos de mínimo privilegio; sin ejecución |
| [Subagentes](../.opencode/agents/backend-revisor-sdd.md) | P01, P02, P12, P13 | Propuesto | Solo lectura; sin ejecución |
| [Skills](../.opencode/skills/backend-validar-coherencia-sdd/SKILL.md) | P01, P02, P12, P13 | Propuesto | Guías locales; sin ejecución |
| [integracion-entre-proyectos.md](../docs/integracion-entre-proyectos.md) | P02, P03, P04, P06, P09 | Propuesto | Alineación pendiente de aprobación docente; sin ejecución |

## Criterios

- Los documentos pertenecen al proyecto Backend y citan únicamente su Constitución como autoridad local.
- Los requisitos ARCH-BE-xx de `000` son de arquitectura base; `001-unit2-api` se limita a las 7 operaciones definidas como alcance de Unidad II.
- `000/task.md` conserva siete tareas sin iniciar; `001/task.md` contiene 21 tareas propuestas sin iniciar. AGENTS no autoriza ejecución por documentar.
- `APR-U2-001` y `ADR-001` son propuestas sin firmas; no acreditan ratificación ni autorización de código.
- El stack ASP.NET Core 10 + MongoDB + JWT se registra como propuesta; no se atribuye ratificación a agentes o skills.
- La configuración OpenCode deniega edición, shell, acceso externo y consulta web; no sustituye aprobación humana.
- El contrato `001/contracts/openapi.yaml` es propuesto y no obliga automáticamente a Móvil.
- El documento de integración no obliga automáticamente a Móvil.
