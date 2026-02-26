local Logger = require("src.logger")

local ProcessMonitor = {}

local suspicious = {"nc", "netcat", "nmap", "hydra"}

function ProcessMonitor:check()
    Logger:log("INFO", "Scanning processes")

    local handle = io.popen("ps aux")
    if handle then
        local output = handle:read("*a")
        handle:close()

        for _, name in ipairs(suspicious) do
            if output:find(name) then
                Logger:log("ALERT", "Suspicious process detected: " .. name)
            end
        end
    end
end

return ProcessMonitor
