# Final Project – DevOps Bootcamp 2025
This project demonstrates a complete DevOps workflow including containerization, 
secure application deployment, monitoring, and visualization using modern DevOps tools.

## Architecture Overview
The system consists of two main servers:
1. Web Server – hosts the application
2. Monitoring Server – hosts Prometheus and Grafana

## Technology Stack
- Docker
- Docker Compose
- Nginx
- Prometheus
- Grafana
- Node Exporter
- Cloudflare Tunnel
- AWS EC2

## Application Deployment
The web application is containerized using Docker and deployed on the web server.
It is exposed securely using Cloudflare Tunnel without opening inbound ports.

## Monitoring & Observability
Monitoring is implemented using Prometheus and Grafana.
- Prometheus collects metrics from Node Exporter
- Grafana visualizes system performance metrics

## Access URLs
- Web Application: https://web.farhansss.com
- Monitoring Dashboard (Grafana): https://monitoring.farhansss.com

## Security Considerations
- No inbound ports are exposed to the public
- All services are accessed via Cloudflare Tunnel
- Prometheus is kept internal and not publicly accessible

## Verification
- Application UI is accessible via public domain
- Grafana dashboard displays real-time system metrics
- Prometheus successfully scrapes node exporter metrics

## Conclusion

This project demonstrates a complete DevOps pipeline with secure deployment, 
monitoring, and observability following best practices.


## System Architecture
The project consists of two EC2 servers:

1. Web Server
   - Hosts the containerized web application
   - Runs on Docker (port 8080 internally)
   - Exposed publicly via Cloudflare Tunnel

2. Monitoring Server
   - Hosts Prometheus, Grafana, and Node Exporter
   - Grafana runs on port 3000
   - Prometheus runs on port 9090 (internal only)
   - Node Exporter runs on port 9100

Cloudflare Tunnel is used to route traffic securely:
- web.farhansss.com → Web Server (8080)
- monitoring.farhansss.com → Grafana (3000)

Prometheus is configured as Grafana's data source and is not exposed publicly.
Grafana is used as the main monitoring interface to provide real-time visualization 
of system metrics. Prometheus acts as the backend time-series database and is kept 
internal to minimize attack surface and improve security.

Cloudflare Tunnel is implemented to securely expose services without opening inbound 
ports on the server. This approach significantly reduces security risks while allowing 
public access through controlled DNS routing.

This project follows DevOps best practices including containerization, separation of 
concerns, infrastructure security, and observability through monitoring and metrics.
