local serde = require("@lune/serde")
local net = require("@lune/net")
local fs = require("@lune/fs")

local API_DUMP_URL = "https://raw.githubusercontent.com/MaximumADHD/Roblox-Client-Tracker/roblox/API-Dump.json"

-- local db = roblox.getReflectionDatabase()

local apiDumpResponse = net.request(API_DUMP_URL)

if not apiDumpResponse.ok then
	error("Failed to fetch API dump:", apiDumpResponse.statusMessage)
end

local apiDump = serde.decode("json", apiDumpResponse.body)

local creatable = {}
for _, classDef in apiDump.Classes do
	local isCreatable = true

	if classDef.Tags then
		for _, tag in classDef.Tags do
			if tag == "NotCreatable" then
				isCreatable = false
				break
			end
		end
	end
	if isCreatable then
		table.insert(creatable, classDef.Name)
	end
end

local previousCreatableInstanceCount = tonumber(fs.readFile("./creatable-instance-count"))

if previousCreatableInstanceCount == #creatable then
	print("No new creatable instances found, not continuing.")
	return
end

fs.writeFile("./creatable-instance-count", tostring(#creatable))

local function lines(items, fmt)
	local tmp = {}
	for _, item in ipairs(items) do
		tmp[#tmp + 1] = string.rep(" ", 4) .. fmt:gsub("{}", item)
	end
	return table.concat(tmp, ",\n")
end

local lookupTableType = "type Lookup = {\n" .. lines(creatable, "{}: {}") .. "\n}"
local classNamesUnionType = 'type ClassNames = "' .. table.concat(creatable, '" | "') .. '"'

local baseCreate = fs.readFile("./base-create.luau")

fs.writeFile(
	"./create.luau",
	baseCreate
		:gsub("--LOOKUP_TABLE_TYPE", lookupTableType)
		:gsub("--CLASS_NAMES_UNION_TYPE", classNamesUnionType)
		:gsub("--!nocheck\n", "")
		:gsub("--LICENSE", `--\[[\n\t{fs.readFile("./LICENSE"):gsub("\n", "\n\t"):gsub("\n\t$", "\n")}]]\n`)
)
