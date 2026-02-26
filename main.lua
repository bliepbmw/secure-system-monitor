local FileMonitor = require("src.file_monitor")
local ProcessMonitor = require("src.process_monitor")
local PortMonitor = require("src.port_monitor")
local Logger = require("src.logger")

Logger:log("INFO", "Starting Secure System Monitor")

FileMonitor:check()
ProcessMonitor:check()
PortMonitor:check()

Logger:log("INFO", "Monitoring cycle complete")
