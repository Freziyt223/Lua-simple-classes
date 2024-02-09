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
    
    
    for k, v in pairs(...) do
        Вивід[k] = v or Вивід[k]
    end
    
    return Вивід
end
function Роль:ПоказатиНазву()
   
end
function Роль.__index(контейнер, предмет)
    return Роль[предмет]
end
