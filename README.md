A lightweight, production-ready Bash utility designed to monitor critical API services and system processes. It ensures high availability by automatically restarting failed services and logging all events for further analysis.
​🚀 Key Features
​Proactive Monitoring: Real-time health checks for local processes and external API endpoints.
​Auto-Recovery: Instantly restarts services upon failure to minimize downtime.
​Detailed Logging: Comprehensive event logs with timestamps for audit and debugging.
​Fault Tolerance: Implemented with signal handling (SIGINT/SIGTERM) for graceful shutdowns.
​Systemd Integration: Includes configuration for automatic startup and persistent background execution.
Tech Stack
​Scripting: Bash (Advanced CLI tools: pgrep, pkill, curl, nohup).
​Orchestration: Docker (Containerized environment for consistent deployment).
​Automation: Systemd (Units & Timers) for OS-level management.
​CI/CD: GitHub Actions for automated syntax validation and functional testing.
Running with Docker
​The easiest way to see the monitor in action without affecting your host system:
docker build -t service-monitor .
docker run --rm service-monitor
Manual Installation
https://github.com/EssLim/devops-monitoring.git
chmod +x monitor.sh
./monitor.sh
CI/CD Workflow
​This project uses GitHub Actions to ensure code quality:
​Syntax Check: Automated validation of Bash scripts.
​Functional Testing: Simulated service failures to verify the auto-restart logic.
​Log Verification: Ensures correct reporting of system events.
