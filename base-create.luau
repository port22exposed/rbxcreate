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

return function<T>(className: T & ClassNames)
	type class = index<Lookup, T>

	return function(properties: Properties<class>)
		return Instance.new(className :: any) :: class
	end
end
