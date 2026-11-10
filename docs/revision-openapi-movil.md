# Revisión OpenAPI para Móvil — BE-U2-05A

> **Estado:** `borrador` · **NO APROBADO** · **Sin firmas** · **No autoriza código, cloud ni contrato vinculante.**
> **Preparado:** 2026-11-04
> **Contrato:** [openapi.yaml](../specs/001-unit2-api/contracts/openapi.yaml) (`1.0.0-draft`)
> **Dirigido a:** Mobile Integration (`America Cristal`); aceptación pendiente.
> **Decisiones:** `BACKEND-D06-B`, `D13`; relacionadas `D05`, `D07`, `D09`, `D10`, `D11`.

## 1. Resultado de la revisión

- OpenAPI 3.1 válido: 7 operaciones, 6 rutas y sin endpoints adicionales.
- Cobertura documental de `RF-U2-01..07` y `AC-U2-01..12`; no sustituye pruebas de implementación.
- Contrato consistente con `spec.md` y `task.md` en métodos, rutas, autenticación, errores y datos principales.
- **No es una aprobación:** `D06` sigue pendiente y `BE-U2-05A` no se ha ejecutado.
- Hallazgo abierto `BE-PEND-07`: semántica de logout entre `204` idempotente y `401` para token revocado.

## 2. Checklist para Móvil

| Área | Verificación | Estado |
|---|---|---|
| Base y versión | `/api/v1`, OpenAPI `1.0.0-draft`, JSON camelCase e ISO-8601 UTC | PENDIENTE de confirmación |
| Registro | `POST /auth/register` devuelve `201` y perfil; no devuelve token | Revisado documentalmente |
| Login | `POST /auth/login` devuelve JWT y perfil; credenciales inválidas `401` | PENDIENTE `D13` |
| Logout | `POST /auth/logout` revoca `jti`; `204` en sesión válida y `401` si el token ya está revocado | PENDIENTE `D10` y `BE-PEND-07` |
| Perfil | `GET/PATCH /users/me`; solo `displayName` y `phone`; `phone: null` permitido | Revisado documentalmente |
| Rutas | `GET /routes` con `page`, `pageSize`, `q`; detalle por ObjectId | PENDIENTE `D11` |
| Errores | `application/problem+json`, `traceId`, `400/401/404/409/429` | Revisado documentalmente |
| Token | `Authorization: Bearer`, vida propuesta 30 min, sin refresh token | PENDIENTE `D07`/`D10` |
| Almacenamiento | El cliente no registra tokens en logs y trata `401` como sesión cerrada | PENDIENTE de confirmación Móvil |
| Nube | Solo servidor local propuesto; staging/cloud fuera (`D09`) | Fuera de alcance |

## 3. Preguntas que debe responder Móvil

1. ¿Confirma Kotlin Android como plataforma vigente? (`BACKEND-D13`)
2. ¿Acepta que un segundo logout con token revocado devuelva `401` y lo trate como sesión ya cerrada?
3. ¿Qué regla de visibilidad espera para rutas: autenticadas activas/públicas o lectura anónima? (`BACKEND-D11`)
4. ¿Cómo mapeará `400`, `401`, `404`, `409` y `429` a mensajes y reintentos?
5. ¿Confirma paginación `page=1`, `pageSize` máximo 100 y búsqueda `q`?
6. ¿Cómo almacenará el JWT y qué hará al expirar sin refresh token?
7. ¿Requiere configuración de URL base por entorno o solo el servidor local propuesto?
8. ¿Acepta `phone` nullable y `displayName` obligatorio en el perfil?

## 4. Condiciones para cerrar BE-U2-05A

- `BE-U2-03` con acuerdo inicial `D06-A` y `D13`.
- Revisión de Móvil registrada en acta, con responsable, fecha y decisión.
- `D06-B` aprobado y `BE-U2-05A` actualizada por autoridad humana.
- Sin firmas ni aprobaciones automáticas; no se modifica `openapi.yaml` sin revisión.
