# Casos de estudio

Casos de prueba definidos en la sección 12 del framework y su detalle (Anexo A), ejecutados a partir de los laboratorios del curso.

## Modelo de evaluación

Cada prueba tiene identificador, objetivo, condiciones, entrada, resultado esperado, resultado observado, evidencia, impacto, severidad, responsable y recomendación. Hay que tener en cuenta que ejecutar bien una prueba no significa que el sistema no tenga vulnerabilidades. El detalle de cada caso está en el Anexo A y los hallazgos en el Anexo B.

| ID  | Prueba             | Resultado esperado            | Resultado obtenido                                                                      | Severidad   | Estado    |
|-----|--------------------|-------------------------------|-----------------------------------------------------------------------------------------|-------------|-----------|
| P01 | Reconocimiento DNS | Información documentada       | IP de scanme.nmap.org y servidores NS y MX de nmap.org identificados (FC-LAB-002)       | Informativa | Ejecutada |
| P02 | Exposición web     | Recursos identificados        | Solo se recuperaron archivos CSS y caché; sin datos sensibles ni endpoints (FC-LAB-003) | Informativa | Ejecutada |
| P03 | Análisis forense   | Evidencia íntegra y analizada | Mensajes ocultos extraídos con Steghide; hashes SHA-256 coinciden (FC-LAB-004)          | Informativa | Ejecutada |

## Detalle de los casos (Anexo A)


Aquí se registran los casos de prueba P01 a P03 de la sección 12 y su resultado.

| **ID**  | **Laboratorio y dominio** | **Fase**                        | **Objetivo del caso**                                                                 | **Resultado esperado**                          | **Resultado obtenido**                            | **Evidencia** | **Estado** |
|---------|---------------------------|---------------------------------|---------------------------------------------------------------------------------------|-------------------------------------------------|---------------------------------------------------|---------------|------------|
| **P01** | FC-LAB-002 · D02          | 03 Identificación               | Identificar los registros DNS públicos del dominio autorizado                         | Registros A, MX, NS y TXT documentados          | IP, servidores NS y MX identificados              | EV-001        | Ejecutada  |
| **P02** | FC-LAB-003 · D03          | 03 Identificación               | Identificar recursos expuestos en la aplicación web del laboratorio                   | Rutas y recursos expuestos identificados        | Solo CSS y caché recuperados; sin datos sensibles | EV-002        | Ejecutada  |
| **P03** | FC-LAB-004 · D06          | 03 Identificación y 04 Análisis | Detectar y extraer información oculta en un archivo de prueba sin alterar el original | Evidencia íntegra (hash verificado) y analizada | Mensajes extraídos; hashes SHA-256 coinciden      | EV-003        | Ejecutada  |
