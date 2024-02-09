Object = {}
function Object.new(self, ...)
    object = setmetatable({}, {__index = self})
    local Arguments = ...
    for k, v in pairs(self) do
        object[k] = Arguments[k] or v
    end
    return object
end