# Matrices del framework

> Parte del documento **EDWARD_FW** · versión completa en [`docs/EDWARD_FW_Framework.docx`](../../docs/EDWARD_FW_Framework.docx) y [PDF](../../docs/EDWARD_FW_Framework.pdf).

### 4.1. Matriz de correspondencia por fase

En esta tabla se relaciona cada fase de EDWARD_FW con las funciones y categorías de NIST CSF 2.0, las etapas de NIST SP 800-115, el proceso de gestión del riesgo de ISO/IEC 27005:2022 y las cláusulas (Cl.) y controles del Anexo A de ISO/IEC 27001:2022.

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
<td>Complemento propio de EDWARD_FW: reejecución de casos comparables</td>
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

### 13.1. Rúbrica de severidad

La severidad de cada hallazgo se asigna con esta rúbrica antes de reportarlo. Si es una vulnerabilidad técnica se usa el puntaje base de CVSS v4.0. Si el hallazgo tiene que ver con procesos, configuración de la organización o factor humano, donde CVSS no aplica, se usa la matriz de probabilidad e impacto. Si se pueden usar los dos criterios y dan niveles diferentes, se toma el más alto y se explica en el Anexo B. Cuando algo no representa riesgo (CVSS 0.0) se registra como informativo y no se cuenta como hallazgo.

| **Nivel**   | **Puntaje CVSS v4.0** | **Criterio de impacto**                                                                                                                            | **Ejemplo orientativo**                                                 | **Plazo de tratamiento sugerido**                  |
|-------------|-----------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|----------------------------------------------------|
| **Crítico** | 9.0 – 10.0            | Compromiso total de la confidencialidad, integridad o disponibilidad de activos críticos; explotable sin autenticación ni interacción del usuario. | Ejecución remota de código en un servidor expuesto.                     | Contención inmediata; corrección en máximo 7 días. |
| **Alto**    | 7.0 – 8.9             | Acceso no autorizado a información sensible o a funciones privilegiadas con condiciones mínimas.                                                   | Acceso a datos de otros usuarios por fallas de autorización en una API. | Máximo 30 días.                                    |
| **Medio**   | 4.0 – 6.9             | Impacto limitado, o que requiere condiciones específicas (autenticación previa, interacción del usuario).                                          | Listado de directorios habilitado con archivos internos no sensibles.   | Máximo 90 días.                                    |
| **Bajo**    | 0.1 – 3.9             | Impacto mínimo; aporta información útil para un atacante sin afectar directamente los activos.                                                     | Mensajes de error que revelan la versión del software.                  | Próximo ciclo de mejora.                           |

*Los plazos son una propuesta y se pueden ajustar según la política de la organización o lo que se acuerde con el responsable del sistema.*

**Matriz de probabilidad e impacto**

| **Probabilidad / Impacto** | **Impacto bajo** | **Impacto medio** | **Impacto alto** |
|----------------------------|------------------|-------------------|------------------|
| **Alta**                   | Medio            | Alto              | Crítico          |
| **Media**                  | Bajo             | Medio             | Alto             |
| **Baja**                   | Bajo             | Bajo              | Medio            |

| **Término**            | **Definición operacional**                                                      |
|------------------------|---------------------------------------------------------------------------------|
| **Probabilidad alta**  | Se puede explotar con herramientas públicas y sin conocimientos especializados. |
| **Probabilidad media** | Requiere condiciones particulares o conocimientos específicos.                  |
| **Probabilidad baja**  | Requiere acceso privilegiado o condiciones poco frecuentes.                     |
| **Impacto alto**       | Afecta activos críticos, datos personales o información sensible.               |
| **Impacto medio**      | Afecta activos de apoyo o información interna no sensible.                      |
| **Impacto bajo**       | No afecta directamente la información ni la operación.                          |
