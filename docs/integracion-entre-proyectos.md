# Integración propuesta entre Rutitas Backend y el proyecto hermano

Este documento es un registro informativo dentro del proyecto Backend. No es una Constitución compartida, no modifica el otro proyecto y no constituye un contrato API aprobado.

## Límites conceptuales

- Cliente y servicio deben acordar explícitamente entradas/salidas, validaciones, errores, compatibilidad y seguridad cuando existan requisitos funcionales.
- En una integración real, el servidor será responsable de autorizar sus recursos y proteger el estado compartido; la interfaz no puede sustituir esa responsabilidad.
- La comunicación remota debe proteger los datos; HTTPS se considera un principio de diseño cuando aplique.
- Móvil considera desconexión/ciclo de vida; Backend contempla control de errores y observabilidad, cada uno según su propio ámbito.

## Contrato propuesto para Unidad II

`specs/001-unit2-api/contracts/openapi.yaml` propone 7 endpoints de autenticación, perfil y consulta de rutas para el cliente móvil (Kotlin propuesto). Es una propuesta documental no vinculante: depende de `BACKEND-D06`, de la confirmación de la plataforma cliente (`BACKEND-D13`) y de la revisión de compatibilidad. `BE-U2-03` solo acuerda el alcance inicial; la aprobación final es `BE-U2-05A`. No autoriza implementación ni obliga al proyecto Móvil.

Paquete de revisión para Móvil: [revision-openapi-movil.md](revision-openapi-movil.md). Es un borrador de revisión, no una aprobación ni un contrato vinculante.

## Pendiente entre ambos equipos

Autoridad, formato definitivo de contratos, versionado, modelo de errores, políticas de identidad, seguridad, datos, compatibilidad y pruebas de contrato. Ninguno se fija todavía. La aprobación de uno de los proyectos no ratifica automáticamente al otro.

**La arquitectura `000` no incluye operaciones específicas, endpoints, pantallas, datos personales ni proveedores. El contrato de `001` es una propuesta para acuerdo; no constituye contrato aprobado ni autoriza despliegue.**
