# FC-LAB-004 · Esteganografía con Steghide (partes 1 a 3)

| Campo | Dato |
|---|---|
| Identificador | FC-LAB-004 |
| Dominio | D06 Forense digital |
| Fase del framework | 03 Identificación y 04 Análisis |
| Enfoque | Forense y colaborativo |
| Herramientas | Steghide, exiftool, strings, binwalk, sha256sum |
| Estado | Abordado |

## Objetivo

Parte 1: ocultar y extraer un mensaje dentro de una imagen JPG. Parte 2: tres casos con imágenes y contraseñas distintas. Parte 3: reto forense con tres evidencias analizadas con `exiftool`, `strings`, `binwalk` y `steghide`. En todas las partes se verificó la integridad con SHA-256.

## Resultado

Caso **P03**: los mensajes ocultos se extrajeron y sus hashes SHA-256 coinciden con los originales. En la parte 3 se identificó además un archivo que no fue ocultado con Steghide, sino concatenado al final de una imagen.

## Informe

- [`Lab04_Steghide_Parte1.docx`](Lab04_Steghide_Parte1.docx)
- [`Lab04_Steghide_Parte2.docx`](Lab04_Steghide_Parte2.docx)
- [`Lab04_Steghide_Parte3.docx`](Lab04_Steghide_Parte3.docx)
