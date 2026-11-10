# Plan de análisis dinámico OWASP ZAP (DAST) para Rutitas

No ejecutar escaneos activos contra Atlas ni contra API de producción. Aún no existe staging aprobado.

1. Desplegar una copia de la API en staging autorizado, con usuarios y datos ficticios, red y cuotas controladas.
2. Configurar en ZAP un contexto para la API; importar el OpenAPI de `/openapi/v1.json` solo si el equipo decide exponerlo en staging.
3. Configurar cabecera `Authorization: Bearer <token de staging>` exclusivamente en almacenamiento seguro, nunca en repo.
4. Ejecutar **baseline pasivo** primero. Registrar riesgos, repetir tras correcciones.
5. Con permiso expreso, ejecutar pruebas activas en entorno aislado y coordinar rate limits.
6. Guardar HTML/JSON de hallazgos, fecha, commit y acciones correctivas. Bloquear producción por hallazgos altos/críticos confirmados.

Herramientas mencionadas en propuesta que requieren infraestructura externa (ZAP/Redis/Cosmos/Azure) se documentan como actividades pendientes, no se declaran ejecutadas.
