Object = {}
function Object:new(...)
    object = setmetatable({}, {__index = self})
    
    for k, v in pairs(...) do
        object[k] = v or object[k]
    end
    return object
end