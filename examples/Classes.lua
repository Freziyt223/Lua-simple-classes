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
        Вивід[k] = v or Вивід[k]
    end
    return Вивід
end
function Роль:ПоказатиНазву()
   
end

