---
title: Ограничения на типове
translations_gpt:
---

{% include menu.html %}

В [частта Основи](/bg/essentials/typed-variables/type-constraints/) задавахте типа на променливи с ограничения на типа. Важно е да отбележим, че именно _контейнерът_ проверява това правило. Той решава кои стойности може да приеме.

Тази декларация създава скаларен контейнер, който може да пази само цели числа:

```raku
my Int $int;
```

Типизираният контейнер приема само стойности, които отговарят на неговия тип. Затова всички тези присвоявания са наред:

```raku
my Int $int;

$int = 123;       # directly an integer
say $int;

$int = 100 + 23;  # the result is an integer
say $int;

$int = '123'.Int; # a string converted to an integer
say $int;
```

Тук Raku не променя типа автоматично. В Raku число с десетична точка е `Rat`. Затова не можете да го присвоите:

```raku
my Int $int;
$int = 123.45;
```

Получавате грешка още по време на компилация:

```
===SORRY!=== Error while compiling t.raku
Cannot assign a literal of type Rat (123.45) to a variable ($int) of
type Int.  You can declare the variable to be of type Real, or try to
coerce the value with 123.45.Int or Int(123.45), or just write the value
as 123.
at t.raku:2
------> <BOL>⏏$int = 123.45;
```

За да избегнете грешката, преобразувайте стойността сами:

```raku
my Int $int;

$int = 123.45.Int;
say $int; # 123
```

Не се бъркайте от двете точки в `123.45.Int`. Първата е десетичната точка. Втората извиква метода `Int` върху рационалната стойност, която е от тип `Rat`.

{% include nav.html %}
