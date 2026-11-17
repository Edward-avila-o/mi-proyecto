# Resultados

| Caso | Laboratorio | Resultado | Severidad | Estado |
|---|---|---|---|---|
| P01 Reconocimiento DNS | [FC-LAB-002](../laboratorios/lab-02-dns/) | IP de scanme.nmap.org (45.33.32.156) y servidores NS (Linode) y MX (Google) de nmap.org identificados | Informativa | Ejecutada |
| P02 Exposición web | [FC-LAB-003](../laboratorios/lab-03-httrack/) | Solo se recuperaron archivos CSS y caché; no se encontraron datos sensibles ni endpoints | Informativa | Ejecutada |
| P03 Análisis forense | [FC-LAB-004](../laboratorios/lab-04-esteganografia/) | Mensajes ocultos extraídos con Steghide; los hashes SHA-256 del original y del extraído coinciden | Informativa | Ejecutada |

Las capturas y evidencias de cada caso están en el informe del laboratorio correspondiente, dentro de [`laboratorios/`](../laboratorios/). Las nuevas evidencias se registran con la plantilla [`registro-evidencias.csv`](../plantillas/registro-evidencias.csv).
