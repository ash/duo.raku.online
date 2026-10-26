---
title: Обмеження типів
translations_gpt:
---

{% include menu.html %}

У [частині «Основи»](/uk/essentials/typed-variables/type-constraints/) ви задавали тип змінних за допомогою обмежень типу. Важливо зазначити, що це правило перевіряє саме _контейнер_. Він вирішує, які значення може приймати.

Це оголошення створює скалярний контейнер, який може зберігати лише цілі числа:

```raku
my Int $int;
```

Типізований контейнер приймає лише ті значення, що підходять до його типу. Тому всі ці присвоєння правильні:

```raku
my Int $int;

$int = 123;       # безпосередньо ціле число
say $int;

$int = 100 + 23;  # результат є цілим числом
say $int;

$int = '123'.Int; # рядок, перетворений на ціле число
say $int;
```

Тут Raku не змінює тип автоматично. У Raku число з десятковою крапкою — це `Rat`. Тому ви не можете його присвоїти:

```raku
my Int $int;
$int = 123.45;
```

Ви отримуєте помилку вже під час компіляції:

```
===SORRY!=== Error while compiling t.raku
Cannot assign a literal of type Rat (123.45) to a variable ($int) of
type Int.  You can declare the variable to be of type Real, or try to
coerce the value with 123.45.Int or Int(123.45), or just write the value
as 123.
at t.raku:2
------> <BOL>⏏$int = 123.45;
```

Щоб уникнути помилки, перетворіть значення самі:

```raku
my Int $int;

$int = 123.45.Int;
say $int; # 123
```

Хай вас не плутають дві крапки в `123.45.Int`. Перша — це десяткова крапка. Друга викликає метод `Int` для раціонального значення, тобто для `Rat`.

{% include nav.html %}
