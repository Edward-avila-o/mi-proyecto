# FC-LAB-003 · Clonación controlada con HTTrack

| Campo | Dato |
|---|---|
| Identificador | FC-LAB-003 |
| Dominio | D03 Seguridad web |
| Fase del framework | 03 Identificación |
| Enfoque | Ofensivo y defensivo |
| Herramientas | HTTrack |
| Estado | Abordado |

## Objetivo

Clonar un sitio de práctica autorizado y revisar qué información queda expuesta del lado del cliente (archivos, rutas, endpoints y datos sensibles).

## Resultado

Caso **P02**: solo se recuperaron archivos CSS y caché; no se encontraron datos sensibles ni endpoints. Se recomienda que la lógica y los datos sensibles se procesen en el servidor, con autenticación, permisos, validación de datos y protección de rutas.

## Informe

- [`Lab03_HTTrack_p1.docx`](Lab03_HTTrack_p1.docx)
- [`Lab03_HTTrack_p2.pdf`](Lab03_HTTrack_p2.pdf)
