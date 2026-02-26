local Logger = require("src.logger")

local Alert = {}

function Alert:trigger(message)
    Logger:log("ALERT", message)
end

return Alert
