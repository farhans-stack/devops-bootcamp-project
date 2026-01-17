# Final Project – DevOps Bootcamp 2025
This project demonstrates a practical DevOps implementation involving containerization,
secure application deployment, monitoring, and visualization using modern DevOps tools.

---

## Architecture Overview
This project demonstrates a complete DevOps workflow using automation,
containerization, secure deployment, and monitoring.

The system is designed with a clear separation of responsibilities and consists of
three main servers:

### Ansible Controller
- Acts as the central automation server
- Uses Ansible playbooks to provision infrastructure and deploy services
- Manages both the web server and monitoring server

### Web Server
- Hosts the containerized web application
- Runs the application using Docker
- Exposes the application internally on port **8080**

### Monitoring Server
- Hosts Prometheus, Grafana, and Node Exporter
- Collects and visualizes system metrics from the servers

This architecture ensures automation, scalability, security, and observability
while following DevOps best practices.

---

## Technology Stack
- **Terraform** (AWS Infrastructure Provisioning)
- Docker
- Docker Compose
- Nginx
- Prometheus
- Grafana
- Node Exporter
- Cloudflare Tunnel
- AWS EC2

---

## Infrastructure Provisioning (Terraform)
Terraform is used to provision and manage AWS infrastructure for this project.
It is responsible for creating EC2 instances for the Ansible Controller,
Web Server, and Monitoring Server.

Infrastructure is managed as code to ensure consistency, repeatability,
and easier maintenance across environments.

---

## Application Deployment
The web application is containerized using Docker and deployed on the web server.
It runs internally on port **8080** and is exposed publicly using **Cloudflare Tunnel**.
No inbound ports are opened on the server.

---

## Monitoring & Observability
Monitoring is implemented using **Prometheus** and **Grafana**.

- Node Exporter collects system metrics from the servers
- Prometheus scrapes metrics from Node Exporter
- Grafana visualizes CPU, memory, disk, and network usage

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
This project reflects a practical DevOps implementation using real infrastructure,
with a strong focus on automation, security, and observability.
