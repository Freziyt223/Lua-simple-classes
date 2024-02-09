Object = {}
function Object:new(...)
    object = setmetatable({}, {__index = self})
    local Arguments = ...
    for k, v in pairs(self) do
        object[k] = Arguments[k] or v
    end
    return object
end