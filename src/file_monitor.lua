local Logger = require("src.logger")
local Config = require("config")

local FileMonitor = {}

function FileMonitor:check()
    Logger:log("INFO", "Checking for recent file changes in " .. Config.WATCH_DIRECTORY)
    os.execute("find " .. Config.WATCH_DIRECTORY .. " -type f -mtime -1 2>/dev/null")
end

return FileMonitor
