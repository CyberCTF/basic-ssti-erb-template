# ClientCare Portal - Internal Communications Lab

A realistic business application demonstrating Server-Side Template Injection (SSTI) vulnerabilities in Ruby ERB templates.

## Quick Start

### Docker Run
```bash
docker pull cyberctf/basic-ssti-erb-template:latest
docker run -p 3206:3206 cyberctf/basic-ssti-erb-template:latest
```

### Docker Compose
```bash
docker-compose up --build
```

## Access

Once running, access the application at: http://localhost:3206

## Objective

This lab simulates an internal communications portal where managers can create dynamic message templates. The application contains a Server-Side Template Injection vulnerability that allows execution of arbitrary Ruby code.

**Target**: Exploit the SSTI vulnerability to remove the confidential escalation procedures file.

## Technical Details

- **Framework**: Ruby Sinatra
- **Template Engine**: ERB (Embedded Ruby)
- **Port**: 3206
- **Vulnerability**: Unsafe ERB template evaluation

## Reporting Issues

If you encounter any issues with this lab, please report them through the appropriate channels.

---

**Disclaimer**: This is a deliberately vulnerable lab designed solely for educational purposes. Do not use these techniques on systems you do not own or have explicit permission to test.
