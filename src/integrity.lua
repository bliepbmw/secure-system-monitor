local Logger = require("src.logger")

local Integrity = {}

function Integrity:hash_file(path)
    local handle = io.popen("sha256sum " .. path .. " 2>/dev/null")
    if handle then
        local result = handle:read("*a")
        handle:close()
        return result:match("^(%w+)")
    end
    return nil
end

return Integrity
