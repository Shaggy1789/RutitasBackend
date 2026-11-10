# Matriz de seguridad OWASP API Top 10 — alcance vigente

| Riesgo | Acción comprobable | Evidencia |
|---|---|---|
| Autenticación rota | JWT inválido y sin JWT => 401; logout revoca | SecurityTests + IntegrationTests |
| BOLA / acceso por objeto | `/users/me` solo lee ID de `sub`; faltan recursos multiusuario privados | UnitTests; BOLA completo **pendiente** |
| BFLA / privilegios | `PATCH /users/me` rechaza `role` | UnitTests + SecurityTests |
| Consumo sin límite | 5/min registro/login y 60/min listado rutas por IP | Código / HTTP manual |
| Inyección | límite de `q`; `Regex.Escape` en repositorio Mongo | revisión y pruebas de validación |
| Exposición de secretos | secretos fuera del repositorio, Gitleaks | GitHub Actions |
| Dependencias | NuGet Audit, Dependabot | GitHub Actions |
| SAST | Semgrep y CodeQL | GitHub Actions |
| Contenedor | Trivy + SBOM en flujo manual | GitHub Actions |

**No implementado por no existir módulo:** reservas, subir archivos, aprobación de conductores, ubicación privada, eliminación de cuenta, control de asientos, autorización de rutas mutables. No afirmar SEC-003/004/005/006/012/013/014/015 como aprobadas.

No ejecutar OWASP ZAP activo contra producción ni contra sistemas ajenos. Hacerlo sobre staging autorizado con red y datos de prueba. Confirmar la retención de logs y evitar información sensible en respuestas o evidencias.
