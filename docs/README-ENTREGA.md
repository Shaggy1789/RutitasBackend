# ENTREGA RUTITAS — mantener 7 endpoints

Proyecto original preservado con **Backend y Móvil independientes**. Se modificó únicamente el Backend para reforzar pruebas y DevSecOps. Se retiró el controlador de ejemplo `WeatherForecast`, que no pertenece al catálogo académico de siete. También se sustituyó la contraseña literal de prueba en `Rutitas.Api.http` por una variable que debes configurar localmente.

## Cambios de código
- `Rutitas.Api/Rutitas.Api/Program.cs`: omitir creación de índices en ambiente aislado `Testing` y exponer host para pruebas.
- `Rutitas.Api/Rutitas.Api/Controllers/RoutesController.cs`: limitar consultas mediante política `routes`.
- `Rutitas.Api/Rutitas.Api.slnx`: añadir 5 proyectos de pruebas.
- `Rutitas.Api/tests`: pruebas de API reales sobre `WebApplicationFactory` con datos simulados, además de unitarias, contratos y arquitectura.
- `.github/workflows`, `.github/dependabot.yml`, `.gitignore`: automatización, dependencias y exclusión de secretos.

## Qué no se cambió
- Contratos de los 7 endpoints; persistencia original `rutitas_db` MongoDB Atlas.
- App móvil ni configuración personal de Atlas.
- Especificación SDD de funcionalidades no aprobadas.

## Estado de verificación
Los archivos se generaron y revisaron estáticamente; **no se ha podido ejecutar `dotnet build`/`dotnet test`** en este entorno, que no trae SDK .NET. Ejecutar los comandos en `docs/guia-ejecucion-pruebas.md` y corregir cualquier diferencia de versiones antes de afirmar PASS.
