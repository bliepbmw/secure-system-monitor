local FileMonitor = require("src.file_monitor")
local ProcessMonitor = require("src.process_monitor")
local PortMonitor = require("src.port_monitor")
local LogMonitor = require("src.log_monitor")
local Baseline = require("src.baseline")
local Logger = require("src.logger")

Logger:log("INFO", "Secure System Monitor started")

while true do
    FileMonitor:check()
    ProcessMonitor:check()
    PortMonitor:check()
    LogMonitor:check_auth()
    Baseline:compare("/etc/passwd")

    Logger:log("INFO", "Cycle complete\n")
    os.execute("sleep 10")
end
