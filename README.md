# Secure System Monitor

Lightweight Lua-based Intrusion Detection & Monitoring System for Linux environments.

## Overview

Secure System Monitor is a modular security monitoring framework designed for:

- File integrity monitoring
- Suspicious process detection
- Authentication log analysis
- Open port inspection
- Threat scoring and alerting
- Continuous daemon monitoring

---

## Architecture


main.lua
├── file_monitor.lua
├── process_monitor.lua
├── port_monitor.lua
├── log_monitor.lua
├── integrity.lua
├── baseline.lua
├── threat_engine.lua
├── rules.lua
├── email_alert.lua
└── logger.lua


---

## Features

- SHA256 file integrity hashing
- Baseline tamper detection
- Failed login detection
- Suspicious process scanning
- Threat scoring system
- JSON reporting
- systemd daemon support

---

## Design Principles

- Modular architecture
- Security-first approach
- Minimal dependencies
- Linux-native integration
- Extensible rule engine

---

## Deployment

Can be installed as a systemd service:


sudo cp secure-monitor.service /etc/systemd/system/
sudo systemctl enable secure-monitor
sudo systemctl start secure-monitor


---

## Status

Active development.
