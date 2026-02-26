local Logger = require("src.logger")

local ProcessMonitor = {}

function ProcessMonitor:check()
    Logger:log("INFO", "Checking running processes...")
    os.execute("ps aux --sort=-%cpu | head -n 10")
end

return ProcessMonitor
