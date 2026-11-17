# FC-LAB-002 · DNS footprinting con nslookup y dig

| Campo | Dato |
|---|---|
| Identificador | FC-LAB-002 |
| Dominio | D02 Reconocimiento y OSINT |
| Fase del framework | 03 Identificación |
| Enfoque | Ofensivo controlado (reconocimiento pasivo) |
| Herramientas | nslookup, dig, whois |
| Estado | Abordado |

## Objetivo

Consultar los registros DNS del dominio de práctica autorizado `nmap.org` / `scanme.nmap.org`: registros A, NS y MX, resolución inversa, DNSKEY y DS, y consulta WHOIS.

## Resultado

Caso **P01**: se identificó la IP de scanme.nmap.org (45.33.32.156), los servidores NS (Linode) y los servidores MX (Google) de nmap.org.

## Informe

- [`Lab02_DNS_Footprinting.docx`](Lab02_DNS_Footprinting.docx)
