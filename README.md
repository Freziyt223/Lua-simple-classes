# Ukrainian variant
- [English Variant](#EnglishVariant)
## Зміст:
  - [Зміст](#Зміст)
  - [Приклади](#Прикладиexamples)
  - [Завантаження](#Завантаження)
    
**Це дуже проста репрезентація функції class в інших мовах програмування.**
Об'єкт *`Object`* може бути змінений, як і його назва. Усі змінні, функції, списки прив'язані до нього автоматично додадуться до нового об'єкта.
```lua
Object = {} -- Будь-який початковий об'єкт класу 
function Object:new(...) -- двокрапка викликає функцію Object.new(self, ...), де self введе те що знаходиться всередині Object
    object = setmetatable({}, {__index = self}) -- створюється новий об'єкт, у який поміщається усе що було в self(__index являє собою посилання на основний об'єкт, якби надаючи йому усі властивності 
                                                -- основного об'єкта)
    local Arguments = ... -- фіксування аргументів функції
    for k, v in pairs(self) do -- цикл що пройдеться по усім значенням аргументів
         if k ~= "Local" then -- та введе або значення аргументу, або, за його відсутності, значення self(усі окрім Local)
            Вивід[k] = v or Вивід[k]
        else
            Local = setmetatable({}, {__index = v}) --Введе Local у окрему змінну
        end 
    end
    return object, Local -- вивід об'єкта і значень Local
end
```
Фунція працює так
```lua
local NewObject = Object:new(...)
після цього усі параметри Object змішаються з введеними параметрами у функцію.
local NewObject, local_arguments = Object:new(...) --Зробить новий об'єкт на основі Object, а також виведе локальні аргументи у local_arguments
--Або ж є такий варіант:
local NewObject, NewObject.Local = Object:new(...) --додасть таблицю Local до нового об'єкту
```
## Приклади(examples)
В прикладах використовуються класи заради створення ролі для копії популярної настільної гри Mafia, щоб не створювати окремо кожну роль з її функціями та параметрами, усе зроблено на основі `Роль`
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
Натисність на кнопку Code у правому верхньому кутку, потім натисніть Download ZIP file, розпакуйте, і можете використовувати код в Program/Classes.lua, або сам файл.

# English variant
It's simple representation of class function in other programming languages.
Object "Object" can be changed, as his name. All variables, functions, tables inside Object will automatically be added to new object.

Object = {} -- Any beginning object for a class
function Object:new(...) -- function for making new class, semicolon passes Object.new(self, ...), where self is equal to caller of a function, in this example Object
object = setmetatable({}, {__index = self}) -- creates new object, which contains everything that was in self(__index is a sender to parent object, giving new object all it's parameters)

for k, v in pairs(...) do -- cycle that will check for all arguments
if k ~= "Local" then
object[k] = Arguments[k] or v -- passes all arguments to the new object
else
Local = setmetatable({}, {__index = v["Local"]}) -- passes all local arguments to a Local
end
end
return object, Local -- returns object and Local
end

Function works like this:

local NewObject = Object:new(...)
After that all Object parameters will be availible in NewObject
local NewObject, local_arguments = Object:new(...) --Will give all parameters to a New Object and pass all parameters maked as Local to a local_arguments
--Або ж є такий варіант:
local NewObject, NewObject.Local = Object:new(...) --will add Local to the NewObject
Examples
The examples use classes to create a role for a clone of the popular board game Mafia, so as not to create a separate role skin with its features and options based on "Role"

To download go to GitHub repository and press on Code in right up corner, then press download ZIP file and unpack it, you can use Program/Classes.lua code or whole file
<Code>На головній сторінці цього репозиторію натисніть Code в правому верньому куті, потім Download ZIP Foulder, після чого розпакуйте архів у якесь місце. <Code>
