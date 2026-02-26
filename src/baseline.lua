local Integrity = require("src.integrity")
local Logger = require("src.logger")

local Baseline = {}

function Baseline:save(path)
    local hash = Integrity:hash_file(path)
    if hash then
        local file = io.open("baseline.json", "w")
        file:write('{"' .. path .. '":"' .. hash .. '"}')
        file:close()
        Logger:log("INFO", "Baseline saved for " .. path)
    end
end

function Baseline:compare(path)
    local hash = Integrity:hash_file(path)
    local file = io.open("baseline.json", "r")
    if not file then return end

    local data = file:read("*a")
    file:close()

    local stored_hash = data:match('"' .. path .. '":"(%w+)"')

    if stored_hash and stored_hash ~= hash then
        Logger:log("ALERT", "File integrity violation detected: " .. path)
    end
end

return Baseline
