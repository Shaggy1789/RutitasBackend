# Inconsistencias pendientes - Rutitas Backend

**Estado:** `PENDIENTE_RATIFICACION` / decisión=`propuesto`. Este reporte no autoriza implementación ni modifica el estado de las tareas.

| ID | Pendiente | Impacto | Acción y autoridad requerida |
|---|---|---|---|
| BE-PEND-01 | La instrucción de Unidad II fue comunicada por el usuario, pero no se dispone de fuente primaria, acta, versión ni identificador verificable; la fecha 29-10-2026 sigue sin verificar. | No permite demostrar completamente la procedencia del alcance. | Registrar la instrucción de 3–4 nov 2026 como comunicación del usuario, mantener la fuente primaria pendiente y validarla con el docente (`BACKEND-D12`). |
| BE-PEND-02 | Constitución, AGENTS y autoridad académica siguen sin ratificación ni designación; los roles operativos de `D03` fueron aceptados por reporte. | Bloquea aprobación normativa y ejecución futura. | Resolver `BACKEND-D01`, `D12` y designar autoridad académica; completar firmas. |
| BE-PEND-03 | Protección de ramas, disponibilidad de `develop`/`feature/*`, restricciones, stack formal y controles técnicos permanecen abiertos. | Bloquea flujo de trabajo, scaffold, pruebas y decisiones tecnológicas. | Verificar/crear ramas y protección (`D02`); resolver `D04`, `D05` y `D07`. |
| BE-PEND-04 | El contrato de integración con Móvil es propuesto, no vinculante. | No se pueden cerrar pruebas de consumidor ni compatibilidad. | Resolver BACKEND-D06 y confirmar la plataforma cliente (`BACKEND-D13`). |
| BE-PEND-05 | La configuración OpenCode está restringida y no fue validada mediante una ejecución de OpenCode. | La compatibilidad declarada debe comprobarse antes de uso operativo. | Revisar configuración cargada en un entorno autorizado, sin habilitar edición ni shell. |
| BE-PEND-06 | La instrucción actual identifica un cliente Kotlin Android, mientras la memoria de Móvil registra un prototipo React/TypeScript/Vite/Capacitor. | Afecta pruebas de contrato y almacenamiento seguro del token. | Confirmar la plataforma con el equipo Móvil; no modificar Móvil desde Backend (`BACKEND-D13`). |
| BE-PEND-07 | `AC-U2-04` describe logout idempotente (`204`), mientras `spec.md` y OpenAPI indican que un token ya revocado produce `401`. | Ambigüedad para el cliente móvil y para las pruebas de logout. | Aclarar la semántica antes de `BE-U2-10`; registrarla en `BACKEND-D10` y en la revisión `BE-U2-05A`. |

No hay tareas ejecutadas; `D02` y `D03` son las decisiones aprobadas y no hay controles técnicos ejecutados.

## Corrección de auditoría (2026-11-03)

Correcciones documentales aplicadas; no se aprobaron decisiones ni se ejecutaron tareas. Estados: corregidos AUD-01..AUD-11, AUD-14..AUD-16 y AUD-20; documentados/mitigados AUD-12, AUD-13 y AUD-17..AUD-19.

- AUD-01/AUD-20: `websearch` denegado en `opencode.json` y en los cinco agentes.
- AUD-02: `BE-AB-01` y `BE-AB-02` registradas como habilitadoras en `plan.md`.
- AUD-03: `BE-AB-04` incluye validación de entrada.
- AUD-04: actores genéricos y supuestos en `spec.md` §3.1–3.2.
- AUD-06: `BE-AB-07` depende de `BACKEND-D06` y del acuerdo de integración.
- AUD-07/AUD-08: README raíz corregido (este paquete).
- AUD-09: índices de subagentes y skills sin la etiqueta “histórico”.
- AUD-12: ruta histórica identificada como no incluida en `memoria.md`.
- AUD-13: commit anterior frente a cambios actuales documentado en `memoria.md`.
- AUD-14: prioridad frente a secuencia aclarada en `task.md`.
- AUD-15: `AC-BE-01..05` y riesgos sin estimación inventada en `spec.md` y `plan.md`.
- AUD-16: este reporte actualizado.
- AUD-17: política `task: deny` documentada en `AGENTS.md`; cambio de política pendiente de aprobación.
- AUD-18: control de copias duplicadas añadido a `CHECKLIST_ENTREGA.md`.
- AUD-19: ZIP original marcado como no incluido/no verificable en `fuentes-consultadas.md` y nota de migración.
- AUD-05/AUD-10/AUD-11: corregidos en el paquete Movil (auditoría cruzada).

## Corrección de planificación Gate 0 (2026-11-03)

- `D08` se separa en etapa A documental y etapa B de implementación; `BE-U2-07` depende de `D08-B`.
- `BE-U2-03` queda como acuerdo inicial; la aprobación final del OpenAPI es `BE-U2-05A`.
- `BE-U2-18` es aceptación local; `BE-U2-20` es aceptación staging/cloud.
- No se aprobaron decisiones ni se ejecutaron tareas; `BE-PEND-01..06` siguen vigentes.
