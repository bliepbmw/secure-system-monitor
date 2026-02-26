local Logger = require("src.logger")

local EmailAlert = {}

function EmailAlert:send(subject, message)
    Logger:log("ALERT", "Sending email alert: " .. subject)
    print("EMAIL CONTENT:\n" .. message)
end

return EmailAlert
