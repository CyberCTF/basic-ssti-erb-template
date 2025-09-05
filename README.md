# Basic SSTI ERB Template Lab

A Server-Side Template Injection (SSTI) vulnerability lab demonstrating ERB template exploitation in a Ruby Sinatra application.

## Objective

**Goal**: Retrieve the contents of the `/etc/passwd` file by exploiting the SSTI vulnerability in the ERB template engine.

## Project Structure

```
basic-ssti-erb-template/
├── build/                           # Application source code
│   ├── app.rb                      # Main Sinatra application
│   ├── config.ru                   # Rack configuration
│   ├── Gemfile                     # Ruby dependencies
│   ├── views/
│   │   └── profile.erb             # Main UI template
│   └── data/
│       └── client_escalation_policies.txt
├── deploy/                         # Docker deployment
│   ├── Dockerfile                  # Container definition
│   ├── docker-compose.yml          # Docker Compose configuration
│   └── README.md                   # Deployment instructions
├── docs/                           # Documentation
│   ├── done.md                     # Completion marker
│   └── WRITEUP.md                  # Lab writeup
├── test/                           # Testing utilities
│   ├── requirements.txt            # Python dependencies
│   └── test_exploit.py             # Exploit validation script
├── metadata.json                   # Lab metadata
└── README.md                       # This file
```

## How to Run with Docker Compose

### Prerequisites
- Docker
- Docker Compose

### Launch the Lab
```bash
# Navigate to the project directory
cd basic-ssti-erb-template

# Start the application using Docker Compose
docker compose -f deploy/docker-compose.yml up --build

# The application will be available at:
# http://localhost:3206
```

### Stop the Lab
```bash
# Stop and remove containers
docker compose -f deploy/docker-compose.yml down
```

## Technologies Used

- **Backend**: Ruby 3.2+ with Sinatra web framework
- **Template Engine**: ERB (Embedded Ruby) - vulnerable to SSTI
- **Frontend**: HTML5 with TailwindCSS for modern UI
- **Containerization**: Docker with Ruby 3.2-slim base image
- **Orchestration**: Docker Compose
- **Testing**: Python with requests library for automated exploit validation

## Vulnerability

The application contains a Server-Side Template Injection (SSTI) vulnerability in the ERB template engine that allows arbitrary code execution.

## Target File

**Objective**: Read `/etc/passwd` to demonstrate successful SSTI exploitation and system file access.

---

**Educational Purpose**: This lab is designed for learning SSTI vulnerabilities in a controlled environment. Use responsibly and only on systems you own or have explicit permission to test.