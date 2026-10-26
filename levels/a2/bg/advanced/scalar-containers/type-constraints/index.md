---
title: Ограничения на типове
translations_gpt:
---

{% include menu.html %}

В [частта Основи](/bg/essentials/typed-variables/type-constraints/) научихте как да дадете тип на променлива. Направихте го с ограничение на типа. Ето нещо важно. Именно _контейнерът_ проверява това правило. Той решава кои стойности приема.

Тази декларация създава скаларен контейнер. Той може да пази само цели числа:

```raku
my Int $int;
```

Типизираният контейнер приема само стойности, които отговарят на типа му. Затова всички тези присвоявания работят:

```raku
my Int $int;

$int = 123;       # directly an integer
say $int;

$int = 100 + 23;  # the result is an integer
say $int;

$int = '123'.Int; # a string converted to an integer
say $int;
```

В този случай Raku не променя типа сам. В Raku число с десетична точка е стойност от тип `Rat`. Затова не можете да го присвоите:

```raku
my Int $int;
$int = 123.45;
```

Получавате грешката по време на компилация. Това е преди програмата да се изпълни:

```
===SORRY!=== Error while compiling t.raku
Cannot assign a literal of type Rat (123.45) to a variable ($int) of
type Int.  You can declare the variable to be of type Real, or try to
coerce the value with 123.45.Int or Int(123.45), or just write the value
as 123.
at t.raku:2
------> <BOL>⏏$int = 123.45;
```

Преобразувайте стойността сами. Тогава няма грешка:

```raku
my Int $int;

$int = 123.45.Int;
say $int; # 123
```

В `123.45.Int` има две точки. Не се бъркайте от тях. Първата точка е десетичната точка. Втората точка извиква метода `Int`. Този метод работи върху стойността от тип `Rat`, рационално число.

{% include nav.html %}
