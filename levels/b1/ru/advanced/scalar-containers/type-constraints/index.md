---
title: Ограничения типов
---

{% include menu.html %}

В [разделе «Основы»](/ru/essentials/typed-variables/type-constraints/) вы задавали типы переменных с помощью ограничений типа. Важно заметить, что это правило проверяет именно _контейнер_. Он решает, какие значения он может принять.

Это объявление создаёт скалярный контейнер, который может хранить только целые числа:

```raku
my Int $int;
```

Типизированный контейнер принимает только значения, которые подходят его типу. Поэтому все следующие присваивания в порядке:

```raku
my Int $int;

$int = 123;       # directly an integer
say $int;

$int = 100 + 23;  # the result is an integer
say $int;

$int = '123'.Int; # a string converted to an integer
say $int;
```

Здесь Raku не меняет тип автоматически. В Raku дробное число с точкой — это `Rat`. Поэтому присвоить его нельзя:

```raku
my Int $int;
$int = 123.45;
```

Вы получаете ошибку уже при компиляции:

```
===SORRY!=== Error while compiling t.raku
Cannot assign a literal of type Rat (123.45) to a variable ($int) of
type Int.  You can declare the variable to be of type Real, or try to
coerce the value with 123.45.Int or Int(123.45), or just write the value
as 123.
at t.raku:2
------> <BOL>⏏$int = 123.45;
```

Чтобы избежать ошибки, преобразуйте значение сами:

```raku
my Int $int;

$int = 123.45.Int;
say $int; # 123
```

Пусть вас не путают две точки в `123.45.Int`. Первая — это десятичный разделитель. Вторая вызывает метод `Int` для рационального значения, то есть для `Rat`.

{% include nav.html %}
