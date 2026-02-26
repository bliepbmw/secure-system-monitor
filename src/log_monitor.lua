local Logger = require("src.logger")

local LogMonitor = {}

function LogMonitor:check_auth()
    Logger:log("INFO", "Checking auth.log for failed logins")

    local handle = io.popen("grep 'Failed password' /var/log/auth.log 2>/dev/null | tail -n 5")
    if handle then
        local output = handle:read("*a")
        handle:close()

        if output ~= "" then
            Logger:log("ALERT", "Failed login attempts detected")
            print(output)
        end
    end
end

return LogMonitor
