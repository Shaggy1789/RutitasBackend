# Rutitas — Backend (proyecto SDD independiente)

**Estado académico:** documentación de arquitectura base y del incremento funcional Unidad II, **no ratificada**. No incluye código de aplicación ni despliegue. No se ha ejecutado ninguna tarea de `000` ni de `001`.

Este proyecto tiene **su propia** Constitución, AGENTS, memoria, subagentes, skills, arquitectura base e incremento funcional. **No hereda automáticamente** autoridades de `../Movil/`.

## Documentos principales

- [Constitución canónica](.specify/memory/constitution.md) y [espejo de raíz](constitution.md).
- [AGENTS](AGENTS.md) · [memoria](memoria.md).
- Arquitectura base: [spec](specs/000-arquitectura-base/spec.md) · [plan](specs/000-arquitectura-base/plan.md) · [task](specs/000-arquitectura-base/task.md).
- Incremento Unidad II: [spec](specs/001-unit2-api/spec.md) · [plan](specs/001-unit2-api/plan.md) · [task](specs/001-unit2-api/task.md) · [OpenAPI](specs/001-unit2-api/contracts/openapi.yaml).
- [Configuración OpenCode](opencode.json) · [Índice de subagentes](subagentes/README.md) · [Índice de skills](skills/README.md).
- [Criterios y estados](docs/standards/estados-y-transiciones.md), [decisiones pendientes](docs/decisiones-pendientes.md), [integración propuesta](docs/integracion-entre-proyectos.md).
- Gate 0: [registro de aprobación propuesto](docs/APR-U2-001.md) · [ADR-001 de stack](docs/ADR-001-stack.md).
- [Fuentes](docs/fuentes-consultadas.md) · [trazabilidad constitucional](docs/trazabilidad-constitucion.md) · [matriz de alineación](docs/matriz-alineacion.md).

## Qué puede mostrarse en clase

La arquitectura base conserva **11 requisitos** y **7 tareas futuras** sin ejecutar. El incremento `001-unit2-api` propone **7 endpoints**, modelos MongoDB, JWT con revocación, contrato OpenAPI, pruebas, CI/CD y despliegue planificado; todo sigue en estado propuesto y no autoriza código ni cloud. Los perfiles y skills se configuran en OpenCode con permisos de solo lectura; no autorizan ni ejecutan tareas.

La ratificación constitucional, el stack formal, el contrato con Móvil, la nube, el presupuesto y el repositorio canónico siguen pendientes. Ver decisiones propias.
