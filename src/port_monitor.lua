local Logger = require("src.logger")
local Config = require("config")

local PortMonitor = {}

function PortMonitor:check()
    Logger:log("INFO", "Checking open ports...")
    os.execute("ss -tuln")
end

return PortMonitor
