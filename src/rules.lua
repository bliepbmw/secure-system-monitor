local ThreatEngine = require("src.threat_engine")

local Rules = {}

function Rules:failed_login()
    ThreatEngine:add(3, "Multiple failed login attempts")
end

function Rules:suspicious_process(name)
    ThreatEngine:add(4, "Suspicious process detected: " .. name)
end

function Rules:file_tamper(path)
    ThreatEngine:add(5, "File integrity violation: " .. path)
end

return Rules
