Роль = {
    Назва = "Heck",
    Тип = ...,
    Убивця = false,
    Колір = "#fffff",
    Опис = ...,
    Спілкується_вночі = false,
    Бік = "Good"
}
Спостерігач = {}

function Роль:створити(...)
    Вивід = setmetatable({}, {__index = self})
    
    local Аргументи = ...
    for k, v in pairs(self) do
        Вивід[k] = Аргументи[k] or v
    end
    
    return Вивід
end
function Роль:ПоказатиНазву()
   
end
function Роль.__index(контейнер, предмет)
    return Роль[предмет]
end
