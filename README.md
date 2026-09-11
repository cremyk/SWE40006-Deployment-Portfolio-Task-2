# SWE40006-Deployment-Portfolio-Task-2

# AWS Cloud Infrastructure & WordPress Deployment Automation
An automated, decoupled, and scalable multi-tier WordPress architecture deployed on Amazon Web Services (AWS). 

---

## Architecture Overview

The deployed cloud infrastructure comprises the following components:
* **Compute Layer:** Amazon EC2 instances running Amazon Linux 2023.
* **Database Layer:** Decoupled Amazon RDS (MariaDB 11.8) database instance configured with enforced TLS/SSL transport (`require_secure_transport=ON`).
* **High Availability & Traffic Distribution:** AWS Application Load Balancer (ALB) distributing inbound HTTP traffic across multiple Availability Zones (`us-east-1a`, `us-east-1b`).
* **Elasticity & Automated Recovery:** Amazon EC2 Auto Scaling Group (ASG) governed by a Launch Template to handle automated scale-out, scale-in, and auto-healing instance lifecycle events.
* **Storage & Disaster Recovery:** Amazon S3 bucket for tar archive backups and S3-backed Amazon Machine Image (AMI) snapshots for instance restoration.

---

## Repository Structure

```text
├── appspec.yml                  # Application specification file mapping files and lifecycle hooks
└── scripts/
    ├── install_dependencies.sh  # Installs Apache (httpd), MariaDB, and PHP 8.x packages via dnf
    ├── start_server.sh          # Starts and enables systemd service daemons
    ├── stop_server.sh           # Gracefully stops active daemons during deployment updates
    ├── create_test_db.sh        # Provisions initial database schemas and access privileges
    └── change_permissions.sh    # Enforces Apache user ownership and directory permissions (755)
