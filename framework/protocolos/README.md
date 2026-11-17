# Protocolos de aplicación

> Parte del documento **EDWARD_FW** · versión completa en [`docs/EDWARD_FW_Framework.docx`](../../docs/EDWARD_FW_Framework.docx) y [PDF](../../docs/EDWARD_FW_Framework.pdf).

### 5.5. Principios rectores

Autorización expresa, proporcionalidad, mínimo impacto, confidencialidad, reproducibilidad, integridad de evidencias, trazabilidad y mejora continua.

### 10.1. Ficha estandarizada de laboratorio

| Campo                  | Descripción / dato requerido          |
|------------------------|---------------------------------------|
| Identificador          | FC-LAB-XXX                            |
| Nombre y versión       | Título, fecha y control de cambios    |
| Objetivo               | Capacidad que se desea evaluar        |
| Dominio y fase         | Código de dominio y fase aplicable    |
| Roles                  | Ejecutor, defensor, revisor           |
| Entorno y autorización | Sistema, alcance y permisos           |
| Entradas               | Datos sintéticos y configuraciones    |
| Procedimiento          | Pasos reproducibles                   |
| Evidencias             | Archivos, capturas, hashes, registros |
| Criterio de aceptación | Condición observable y verificable    |
| Análisis defensivo     | Controles y recomendaciones           |
| Resultado              | Informe y matriz de evaluación        |

### 11.2. Seguridad de publicación

No subir credenciales, tokens, datos personales, información de terceros, capturas sensibles ni artefactos que permitan afectar objetivos reales. Usar escenarios autorizados, archivos sintéticos y resultados anonimizados.

### 11.3. Trazabilidad

Cada laboratorio debe vincularse con:

- Fase

- Dominio

- Caso de prueba

- Hallazgo

- Control

- Resultado de verificación

### Protocolo de evidencias (Anexo C)


Cada evidencia tiene un identificador (EV-001, EV-002 y EV-003) y se relaciona con su caso de prueba. En los laboratorios se calculó el hash SHA-256 de los archivos para comprobar que no fueran modificados.

| **ID**     | **Caso** | **Evidencia**                                                    | **Informe**                                  | **Ubicación en el repositorio**     |
|------------|----------|------------------------------------------------------------------|----------------------------------------------|-------------------------------------|
| **EV-001** | P01      | Capturas de las consultas con nslookup, dig y whois              | Lab02_DNS_Footprinting.docx                  | laboratorios/lab-02-dns/            |
| **EV-002** | P02      | Capturas del sitio clonado con HTTrack y respuestas del análisis | Lab03_HTTrack_p1.docx y Lab03_HTTrack_p2.pdf | laboratorios/lab-03-httrack/        |
| **EV-003** | P03      | Capturas de Steghide y comparación de hashes SHA-256             | Lab04_Steghide_Parte1 a Parte3               | laboratorios/lab-04-esteganografia/ |

Las capturas completas de cada evidencia están en el informe del laboratorio correspondiente, dentro de la carpeta laboratorios/ del repositorio.
