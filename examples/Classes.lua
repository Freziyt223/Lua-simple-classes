os.execute("chcp 65001")
Роль = {
    Назва = "Невиновний",
    Тип = "Невинний",
    Убивця = false,
    Колір = "#fffff",
    Опис = "Простий житель міста",
    Спілкується_вночі = false,
    Бік = "Хороший"
}
Спостерігач = {}

function Роль:створити(...)
    local Вивід = setmetatable({}, {__index = self})
    local Аргументи = ...
    for k, v in pairs(...) do
        if k ~= "Local" then
            Вивід[k] = v or Вивід[k]
        else
            Local = setmetatable({}, {__index = v})
        end
    end
    return Вивід, Local
end
function Роль:ПоказатиНазву()
   
end

