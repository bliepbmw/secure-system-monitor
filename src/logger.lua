local Logger = {}

function Logger:log(level, message)
    local time = os.date("%Y-%m-%d %H:%M:%S")
    print(string.format("[%s] [%s] %s", time, level, message))
end

return Logger
