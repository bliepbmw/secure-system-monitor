local Report = {}

function Report:save(data)
    local file = io.open("report.json", "w")
    file:write(data)
    file:close()
end

return Report
