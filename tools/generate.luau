local roblox = require("@lune/roblox")
local fs = require("@lune/fs")

local db = roblox.getReflectionDatabase()

local creatable = {}
for _, name in db:GetClassNames() do
	local info = db:GetClass(name)
	if info and not table.find(info.Tags, "NotCreatable") then
		table.insert(creatable, name)
	end
end

local previousCreatableInstanceCount = tonumber(fs.readFile("../creatable-instance-count"))

if previousCreatableInstanceCount == #creatable then
	-- no changes in creatable instances
	return
end

fs.writeFile("../creatable-instance-count", tostring(#creatable))

local function lines(items, fmt)
	local tmp = {}
	for _, v in ipairs(items) do
		tmp[#tmp + 1] = string.rep(" ", 4) .. fmt:gsub("{}", v)
	end
	return table.concat(tmp, ",\n")
end

local lookupTableType = "type Lookup = {\n" .. lines(creatable, "{}: {}") .. "\n}"
local classNamesUnionType = 'type ClassNames = "' .. table.concat(creatable, '" | "') .. '"'
