--LICENSE
--!nocheck
--LOOKUP_TABLE_TYPE

--CLASS_NAMES_UNION_TYPE

type function Properties(instance: type?)
	local properties = types.newtable()

	while instance do
		for i, v in instance:properties() do
			local connector = v.read and v.read.tag == "table" and v.read:readproperty(types.singleton("Connect"))
			if connector then
				if not connector then
					continue
				end
				local params = connector:parameters().head
				if not params then
					continue
				end
				local listener = params[2]
				if not listener then
					continue
				end
				properties:setproperty(i, types.optional(listener))
			elseif v.write then
				properties:setproperty(
					i,
					types.optional(types.unionof(v.write, types.newfunction({}, { head = { v.write } })))
				)
			end
		end

		instance = instance:readparent()
	end

	properties:setindexer(types.number, types.any)

	return properties
end

return function<T>(className: T & ClassNames, defaultParent: Instance?)
	type class = index<Lookup, T>
	return function(properties: Properties<class>)
		local parent = defaultParent or nil
		local instance = Instance.new(className)

		for name, value in pairs(properties) do
			if typeof(name) ~= "string" then
				continue
			end

			if name == "Parent" then
				parent = value
			elseif name == "Children" and typeof(value) == "table" then
				for _, child in value do
					if typeof(child) == "Instance" then
						child.Parent = instance
					end
				end
			else
				if typeof(instance[name]) == "RBXScriptSignal" then
					instance[name]:Connect(value)
				else
					instance[name] = value
				end
			end
		end

		instance.Parent = parent :: Instance?

		return instance :: class
	end
end
