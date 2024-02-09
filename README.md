
<span style="color: yellow;">Ukrainian variant</span>
**Це дуже проста репрезентація функції class в інших мовах програмування.**
Об'єкт <span style="color: red;">*Object*</span> може бути змінений, як і його назва. Усі змінні, функції, списки прив'язані до нього автоматично додадуться до нового об'єкта.
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
