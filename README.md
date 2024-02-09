# Ukrainian variant

## Зміст:
  - [Зміст](#Зміст)
  - [Приклади](#Приклади(examples))
  - [Завантаження](#Завантаження)
**Це дуже проста репрезентація функції class в інших мовах програмування.**
Об'єкт *Object* може бути змінений, як і його назва. Усі змінні, функції, списки прив'язані до нього автоматично додадуться до нового об'єкта.
```lua
Object = {} -- Будь-який початковий об'єкт класу 
function Object:new(...) -- двокрапка викликає функцію Object.new(self, ...), де self введе те що знаходиться всередині Object
    object = setmetatable({}, {__index = self}) -- створюється новий об'єкт, у який поміщається усе що було в self(__index являє собою посилання на основний об'єкт, якби надаючи йому усі властивності 
                                                -- основного об'єкта)
    local Arguments = ... -- фіксування аргументів функції
    for k, v in pairs(self) do -- цикл що пройдеться по усім значенням аргументів
        object[k] = Arguments[k] or v -- та введе або значення аргументу, або, за його відсутності, значення self
    end
    return object -- вивід об'єкта
end
```
Фунція працює так
```lua
local NewObject = Object:new(...)
після цього усі параметри Object змішаються з введеними параметрами у функцію.
```
## Приклади(examples)
В прикладах використовуються класи заради створення ролі для популярної настільної гри Mafia, щоб не створювати окремо кожну роль з її функціями та параметрами, усе зроблено на основі "Роль"
```lua
Мафія = Роль:створити({Тип = "Mafia", Убивця = true, Колір = 1, Опис = "Killer of the town", Спілкується_вночі= true, Бік = "Bad"})
```
Тут навіть якщо ми не введемо якийсь параметр цей параметр залишиться з 
```lua
Роль = {
    Назва = "Heck",
    Тип = ...,
    Убивця = false,
    Колір = "#fffff",
    Опис = ...,
    Спілкується_вночі = false,
    Бік = "Good"
}
```
## Завантаження
На головній сторінці цього репозиторію натисніть <Code>, потім Download ZIP Foulder, після чого розпакуйте архів у якесь місце.
