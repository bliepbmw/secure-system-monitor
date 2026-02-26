local Logger = require("src.logger")

local ThreatEngine = {}

local score = 0

function ThreatEngine:add(points, reason)
    score = score + points
    Logger:log("SECURITY", "Threat +" .. points .. " → " .. reason)
end

function ThreatEngine:evaluate()
    if score >= 10 then
        Logger:log("ALERT", "High threat level detected")
    elseif score >= 5 then
        Logger:log("WARN", "Medium threat level")
    else
        Logger:log("INFO", "System stable")
    end
    score = 0
end

return ThreatEngine
