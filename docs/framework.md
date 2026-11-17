# Fundamentación del framework

> Parte del documento **FORTIS** · versión completa en [`docs/FORTIS_Framework.docx`](FORTIS_Framework.docx) y [PDF](FORTIS_Framework.pdf).

## ESCENARIO

FORTIS propone un marco metodológico para organizar evaluaciones de ciberseguridad por medio de seis fases: preparación, prevención, identificación, análisis, mitigación y verificación. Integra los enfoques Red Team, Blue Team y Purple Team, la seguridad de aplicaciones, el OSINT, el análisis forense y el factor humano. Los laboratorios realizados en el curso se toman como instrumentos del marco y no reemplazan la metodología. La idea es que cada práctica, desde el reconocimiento en fuentes abiertas hasta la verificación de controles, siga el mismo procedimiento: objetivos, roles, evidencias y criterios de cierre definidos desde el inicio.

El marco está pensado para usarse en cursos de ciberseguridad y en organizaciones que necesiten evaluar sus sistemas de información de forma ordenada y con autorización. En cualquier caso, se parte de un permiso expreso, se define el alcance de la evaluación y cada hallazgo debe estar respaldado por evidencias. Así se pueden comparar los resultados entre una evaluación y la siguiente, y tomar mejores decisiones sobre cómo tratar los riesgos.

El framework todavía está en fase de diseño. Para saber si es útil, consistente y reproducible hay que probarlo en casos de estudio autorizados, con métricas definidas y evidencias que se puedan verificar. Esta primera versión presenta la fundamentación, las fases, los dominios de evaluación y el catálogo de laboratorios. Más adelante se espera agregar los resultados de la validación, los ajustes necesarios y nuevos laboratorios, sobre todo para el dominio D07 (detección y respuesta).

## 1. INTRODUCCIÓN

### 1.1. Contexto

Cada vez dependemos más de servicios digitales, APIs, redes y sistemas inteligentes, por lo que es más necesario evaluar qué tan expuestos están, qué controles técnicos tienen y cómo actúan las personas que los usan. La ciberseguridad necesita actividades preventivas, pruebas controladas, análisis de evidencias y mejora continua. Además, el trabajo remoto, los servicios en la nube y el uso de modelos de lenguaje (LLM) dentro de las aplicaciones aumentan la superficie de ataque y traen riesgos nuevos, como la inyección de instrucciones (prompt injection). Existen referentes reconocidos, como NIST CSF 2.0, MITRE ATT&CK y OWASP, pero para aplicarlos en un curso o en una organización con pocos recursos se necesitan procedimientos concretos que unan las pruebas, los roles y las evidencias en una secuencia que se pueda repetir.

### 1.2. Problemática

Las prácticas de reconocimiento, pentesting, defensa y análisis forense normalmente se hacen por separado. Si no hay protocolos ni criterios comunes, es difícil repetir los resultados, relacionar los hallazgos con los controles y demostrar que hubo una mejora.

### 1.3. Justificación

Un marco metodológico ayuda a coordinar a las personas que participan, a estandarizar las pruebas y a usar evidencias que se puedan comparar, tanto en el ámbito académico como en una organización.

### 1.4. Propósito

Ofrecer una ruta ordenada para planear evaluaciones autorizadas, identificar debilidades, analizar riesgos, aplicar tratamientos y comprobar si funcionaron.

### 1.5. Contribución esperada

Integrar fases, dominios, roles, instrumentos, matrices, métricas y laboratorios en una estructura que se pueda repetir y que se pueda validar en la práctica.

## 2. FUNDAMENTOS DE CIBERSEGURIDAD

| Tema                 | Contenido previsto                                                             |
|----------------------|--------------------------------------------------------------------------------|
| Principios           | Confidencialidad, integridad, disponibilidad y trazabilidad.                   |
| Gestión del riesgo   | Activos, amenazas, vulnerabilidades, probabilidad, impacto y tratamiento.      |
| Superficie de ataque | Activos expuestos, servicios, vectores y dependencias.                         |
| Seguridad ofensiva   | Reconocimiento, pruebas de penetración y emulación adversaria autorizada.      |
| Seguridad defensiva  | Prevención, detección, respuesta, recuperación y monitoreo.                    |
| Forense digital      | Preservación, análisis e integridad de evidencias.                             |
| Aplicaciones y APIs  | Autenticación, autorización, sesiones, validación y exposición de información. |
| Factor humano        | Ingeniería social, concienciación y verificación de procesos.                  |
| IA y LLM             | Prompt injection y controles para aplicaciones que integran modelos.           |

## 3. MODELOS OPERATIVOS Y EQUIPOS DE CIBERSEGURIDAD

| Modelo / función | Papel dentro de FORTIS                                                                         |
|------------------|------------------------------------------------------------------------------------------------|
| Red Team         | Simulación adversaria autorizada; no se equipara toda prueba puntual a una operación Red Team. |
| Blue Team        | Protección, detección, investigación y respuesta.                                              |
| Purple Team      | Coordinación de pruebas ofensivas y defensivas para mejorar controles.                         |
| SOC              | Función de monitoreo y gestión de eventos; no es requisito para todo laboratorio.              |
| CSIRT            | Coordinación de respuesta ante incidentes.                                                     |
| Pentesting       | Evaluación técnica acotada de vulnerabilidades.                                                |
| Threat Hunting   | Búsqueda proactiva de señales de amenazas.                                                     |
| DFIR             | Forense digital y respuesta a incidentes.                                                      |

Se recomienda trabajar con un enfoque Purple Team en todo el proceso. En un curso, o en una organización pequeña, una misma persona puede cumplir varios roles; en ese caso se deben documentar sus responsabilidades y, cuando se pueda, separar a quien ejecuta las pruebas de quien las verifica.

## 4. REFERENTES TÉCNICOS Y NORMATIVOS

| Referente                 | Uso propuesto                                                    |
|---------------------------|------------------------------------------------------------------|
| NIST CSF 2.0              | Organización de funciones de gestión de riesgo.                  |
| NIST SP 800-115           | Orientación para evaluación técnica de seguridad.                |
| MITRE ATT&CK              | Taxonomía de tácticas y técnicas adversarias.                    |
| OWASP Top 10              | Riesgos comunes en aplicaciones web.                             |
| OWASP WSTG                | Procedimientos de pruebas de seguridad web.                      |
| ISO/IEC 27001             | Contexto de gestión de seguridad de la información.              |
| ISO/IEC 27005             | Orientación para análisis y tratamiento de riesgos.              |
| OWASP API Security Top 10 | Riesgos de seguridad en APIs (D04).                              |
| OWASP Top 10 para LLM     | Riesgos en aplicaciones que integran modelos de lenguaje (D08).  |
| CVSS v4.0 (FIRST)         | Puntuación estandarizada de la severidad de vulnerabilidades.    |
| ISO/IEC 27037             | Identificación, recolección y preservación de evidencia digital. |
| NIST SP 800-61r3          | Respuesta a incidentes alineada con NIST CSF 2.0.                |

Para usar estos referentes de forma ordenada se necesita una matriz de correspondencia. En las secciones 4.1 y 4.2 se presenta por fase y por dominio, y en la sección 16.1 están las referencias completas.

### 4.1. Matriz de correspondencia por fase

En esta tabla se relaciona cada fase de FORTIS con las funciones y categorías de NIST CSF 2.0, las etapas de NIST SP 800-115, el proceso de gestión del riesgo de ISO/IEC 27005:2022 y las cláusulas (Cl.) y controles del Anexo A de ISO/IEC 27001:2022.

<table>
<colgroup>
<col style="width: 14%" />
<col style="width: 23%" />
<col style="width: 19%" />
<col style="width: 16%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>Fase</strong></th>
<th><strong>NIST CSF 2.0</strong></th>
<th><strong>NIST SP 800-115</strong></th>
<th><strong>ISO/IEC 27005:2022</strong></th>
<th><strong>ISO/IEC 27001:2022</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>01 Preparación</strong></td>
<td>GV.OC Contexto organizacional<br />
GV.RR Roles, responsabilidades y autoridades<br />
ID.AM Gestión de activos</td>
<td>Planificación de la evaluación (alcance, reglas de compromiso, logística)</td>
<td>Establecimiento del contexto</td>
<td>Cl. 4 Contexto de la organización<br />
Cl. 6.1 Acciones para tratar riesgos<br />
A.5.9 Inventario de activos</td>
</tr>
<tr class="even">
<td><strong>02 Prevención</strong></td>
<td>ID.RA Evaluación de riesgos<br />
PR.PS Seguridad de la plataforma<br />
PR.AA Identidad, autenticación y control de acceso</td>
<td>Técnicas de revisión (documentación, registros, configuraciones)</td>
<td>Identificación del riesgo</td>
<td>Cl. 8.2 Evaluación de riesgos<br />
A.8.9 Gestión de la configuración</td>
</tr>
<tr class="odd">
<td><strong>03 Identificación</strong></td>
<td>ID.RA Evaluación de riesgos<br />
DE.CM Monitoreo continuo</td>
<td>Identificación y análisis de objetivos; validación de vulnerabilidades</td>
<td>Identificación del riesgo</td>
<td>A.8.8 Gestión de vulnerabilidades técnicas<br />
A.8.29 Pruebas de seguridad en desarrollo y aceptación</td>
</tr>
<tr class="even">
<td><strong>04 Análisis</strong></td>
<td>ID.RA Evaluación de riesgos<br />
RS.AN Análisis de incidentes</td>
<td>Actividades posteriores a la prueba: análisis de hallazgos e informe</td>
<td>Análisis y valoración del riesgo</td>
<td>Cl. 8.2 Evaluación de riesgos<br />
A.5.28 Recolección de evidencias</td>
</tr>
<tr class="odd">
<td><strong>05 Mitigación</strong></td>
<td>RS.MI Mitigación de incidentes<br />
Categorías PR aplicables al control</td>
<td>Actividades posteriores a la prueba: recomendaciones de mitigación</td>
<td>Tratamiento del riesgo</td>
<td>Cl. 6.1.3 y 8.3 Tratamiento de riesgos</td>
</tr>
<tr class="even">
<td><strong>06 Verificación</strong></td>
<td>ID.IM Mejora<br />
GV.OV Supervisión</td>
<td>Complemento propio de FORTIS: reejecución de casos comparables</td>
<td>Seguimiento y revisión</td>
<td>Cl. 9 Evaluación del desempeño<br />
Cl. 10 Mejora</td>
</tr>
</tbody>
</table>

### 4.2. Matriz de correspondencia por dominio

En esta tabla se relaciona cada dominio de evaluación con técnicas de MITRE ATT&CK (versión 20), guías de OWASP, categorías de NIST CSF 2.0 y otros referentes. Los nombres de las técnicas de ATT&CK se dejaron en inglés, tal como aparecen en la fuente oficial.

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 24%" />
<col style="width: 20%" />
<col style="width: 18%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>Dominio</strong></th>
<th><strong>MITRE ATT&amp;CK</strong></th>
<th><strong>OWASP</strong></th>
<th><strong>NIST CSF 2.0</strong></th>
<th><strong>Otros referentes</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>D01 Entornos y sistemas</strong></td>
<td>No aplica (preparación del entorno de pruebas)</td>
<td>No aplica</td>
<td>PR.PS Seguridad de la plataforma<br />
ID.AM Gestión de activos</td>
<td>ISO/IEC 27001: A.8.9</td>
</tr>
<tr class="even">
<td><strong>D02 Reconocimiento y OSINT</strong></td>
<td>TA0043 Reconnaissance: T1590 Gather Victim Network Information, T1593 Search Open Websites/Domains, T1595 Active Scanning</td>
<td>WSTG: recopilación de información (WSTG-INFO)</td>
<td>ID.AM Gestión de activos<br />
ID.RA Evaluación de riesgos</td>
<td>NIST SP 800-115: identificación y análisis de objetivos</td>
</tr>
<tr class="odd">
<td><strong>D03 Seguridad web</strong></td>
<td>T1190 Exploit Public-Facing Application</td>
<td>OWASP Top 10:2025 (A01 a A10); WSTG</td>
<td>PR.PS Seguridad de la plataforma<br />
PR.DS Seguridad de los datos</td>
<td>ISO/IEC 27001: A.8.29</td>
</tr>
<tr class="even">
<td><strong>D04 Comunicaciones y APIs</strong></td>
<td>T1190 Exploit Public-Facing Application</td>
<td>API Security Top 10:2023 (API1 BOLA, API2 autenticación, API5 autorización por función)</td>
<td>PR.AA Identidad, autenticación y control de acceso</td>
<td>ISO/IEC 27001: A.8.8</td>
</tr>
<tr class="odd">
<td><strong>D05 Factor humano</strong></td>
<td>T1566 Phishing; T1598 Phishing for Information</td>
<td>No aplica</td>
<td>PR.AT Concienciación y formación</td>
<td>ISO/IEC 27001: A.6.3</td>
</tr>
<tr class="even">
<td><strong>D06 Forense digital</strong></td>
<td>Apoya el análisis de técnicas observadas</td>
<td>No aplica</td>
<td>RS.AN Análisis de incidentes</td>
<td>ISO/IEC 27037; ISO/IEC 27001: A.5.28</td>
</tr>
<tr class="odd">
<td><strong>D07 Detección y respuesta</strong></td>
<td>Técnicas emuladas y sus detecciones asociadas</td>
<td>OWASP Top 10:2025 A09 (fallas en el registro, alerta y monitoreo)</td>
<td>DE.CM Monitoreo continuo<br />
DE.AE Análisis de eventos adversos<br />
RS.MA Gestión de incidentes</td>
<td>NIST SP 800-61r3; ISO/IEC 27001: A.8.15, A.8.16</td>
</tr>
<tr class="even">
<td><strong>D08 Seguridad de IA</strong></td>
<td>T1699 Direct Prompt Injection; T1698 Indirect Prompt Injection</td>
<td>LLM Top 10:2026 (LLM01 Prompt Injection)</td>
<td>PR.DS Seguridad de los datos<br />
DE.AE Análisis de eventos adversos</td>
<td>No aplica</td>
</tr>
</tbody>
</table>

### 16.1. Referencias bibliográficas

Las referencias están en formato APA 7. Las normas ISO/IEC se citan con su título oficial en inglés.

Forum of Incident Response and Security Teams. (2023). *Common Vulnerability Scoring System version 4.0: Specification document*. https://www.first.org/cvss/specification-document

International Organization for Standardization. (2012). *Information technology — Security techniques — Guidelines for identification, collection, acquisition and preservation of digital evidence* (Norma ISO/IEC n.º 27037:2012). https://www.iso.org/standard/44381.html

International Organization for Standardization. (2022a). *Information security, cybersecurity and privacy protection — Guidance on managing information security risks* (Norma ISO/IEC n.º 27005:2022). https://www.iso.org/standard/80585.html

International Organization for Standardization. (2022b). *Information security, cybersecurity and privacy protection — Information security management systems — Requirements* (Norma ISO/IEC n.º 27001:2022). https://www.iso.org/standard/27001

MITRE Corporation. (2026). *MITRE ATT&CK* (versión 20) \[Base de conocimiento\]. Recuperado el 7 de noviembre de 2026, de https://attack.mitre.org/

National Institute of Standards and Technology. (2024). *The NIST Cybersecurity Framework (CSF) 2.0* (NIST CSWP 29). https://doi.org/10.6028/NIST.CSWP.29

Nelson, A., Rekhi, S., Souppaya, M., & Scarfone, K. (2025). *Incident response recommendations and considerations for cybersecurity risk management: A CSF 2.0 community profile* (NIST SP 800-61r3). National Institute of Standards and Technology. https://doi.org/10.6028/NIST.SP.800-61r3

OWASP Foundation. (2020). *OWASP Web Security Testing Guide* (versión 4.2). https://owasp.org/www-project-web-security-testing-guide/

OWASP Foundation. (2023). *OWASP API Security Top 10 – 2023*. https://owasp.org/API-Security/

OWASP Foundation. (2025). *OWASP Top 10:2025*. https://owasp.org/Top10/2025/

OWASP GenAI Security Project. (2026). *OWASP GenAI LLM Top 10 2026*. https://genai.owasp.org/resource/owasp-genai-llm-top-10-2026/

Scarfone, K., Souppaya, M., Cody, A., & Orebaugh, A. (2008). *Technical guide to information security testing and assessment* (NIST SP 800-115). National Institute of Standards and Technology. https://doi.org/10.6028/NIST.SP.800-115
