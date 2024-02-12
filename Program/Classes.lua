Object = {
    something = "heck"
}
function Object:new(...)
    local object = setmetatable({}, {__index = self})
    
    for k, v in pairs(...) do
        if k ~= "Local" then
            object[k] = v or object[k]
        else
            Local = setmetatable({}, {__index = v})
        end
    end
    return object, Local
end


