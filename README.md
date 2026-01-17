# Final Project – DevOps Bootcamp 2025
This project demonstrates a practical DevOps implementation involving containerization, 
secure application deployment, monitoring, and visualization using modern DevOps tools.

---

## Architecture Overview
The system is deployed using two EC2 servers:

1. **Web Server**
   - Hosts the containerized web application
   - Runs using Docker
   - Exposed securely via Cloudflare Tunnel

2. **Monitoring Server**
   - Hosts Prometheus, Grafana, and Node Exporter
   - Used for system monitoring and observability

---

## Technology Stack
- Docker
- Docker Compose
- Nginx
- Prometheus
- Grafana
- Node Exporter
- Cloudflare Tunnel
- AWS EC2

---

## Application Deployment
The web application is containerized using Docker and deployed on the web server.
It runs internally on port **8080** and is exposed publicly using **Cloudflare Tunnel**.
No inbound ports are opened on the server.

---

## Monitoring & Observability
Monitoring is implemented using **Prometheus** and **Grafana**.

- **Node Exporter** collects system metrics from the servers
- **Prometheus** scrapes metrics from Node Exporter
- **Grafana** visualizes metrics such as CPU, memory, disk, and network usage

Prometheus is used as Grafana’s data source and is not exposed publicly.

---

## Access URLs
- **Web Application**: https://web.farhansss.com  
- **Monitoring Dashboard (Grafana)**: https://monitoring.farhansss.com  

---

## Security Considerations
- No inbound ports are exposed to the public
- All external access is handled via Cloudflare Tunnel
- Prometheus is accessible only internally
- Grafana is the only monitoring component exposed publicly

---

## Verification
- Web application UI is accessible via the public domain
- Grafana dashboard displays real-time system metrics
- Prometheus successfully scrapes metrics from Node Exporter

---

## Conclusion
This project reflects practical DevOps implementation using real infrastructure,
focusing on security, automation, and observability.

## System Architecture
This project is deployed using three EC2 servers with clear separation of roles:

1. Ansible Controller  
   - Used to automate server configuration and application deployment  
   - Manages the web and monitoring servers using Ansible playbooks  

2. Web Server  
   - Hosts the containerized web application  
   - Runs on Docker and serves the application internally on port 8080  
   - Public access is provided securely via Cloudflare Tunnel  

3. Monitoring Server  
   - Hosts Prometheus, Grafana, and Node Exporter  
   - Prometheus collects system metrics internally  
   - Grafana visualizes metrics and is exposed publicly via Cloudflare Tunnel  

Cloudflare Tunnel is used to securely expose the web application and monitoring
dashboard without opening any inbound ports on the servers.


