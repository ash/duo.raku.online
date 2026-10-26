---
title: Ограничения типов
---

{% include menu.html %}

В [разделе «Основы»](/ru/essentials/typed-variables/type-constraints/) вы научились задавать тип переменной. Вы делали это с помощью ограничения типа. Вот важный момент. Это правило проверяет _контейнер_. Он решает, какие значения принимать.

Это объявление создаёт скалярный контейнер. Он может хранить только целые числа:

```raku
my Int $int;
```

Контейнер с типом принимает только значения, которые подходят к его типу. Поэтому все эти присваивания работают:

```raku
my Int $int;

$int = 123;       # directly an integer
say $int;

$int = 100 + 23;  # the result is an integer
say $int;

$int = '123'.Int; # a string converted to an integer
say $int;
```

В этом случае Raku не меняет тип сам. В Raku дробное число — это значение типа `Rat`. Поэтому присвоить его нельзя:

```raku
my Int $int;
$int = 123.45;
```

Вы получаете ошибку во время компиляции. Это ещё до запуска программы:

```
===SORRY!=== Error while compiling t.raku
Cannot assign a literal of type Rat (123.45) to a variable ($int) of
type Int.  You can declare the variable to be of type Real, or try to
coerce the value with 123.45.Int or Int(123.45), or just write the value
as 123.
at t.raku:2
------> <BOL>⏏$int = 123.45;
```

Преобразуйте значение сами. Тогда ошибки не будет:

```raku
my Int $int;

$int = 123.45.Int;
say $int; # 123
```

В `123.45.Int` есть две точки. Пусть они вас не путают. Первая точка отделяет дробную часть числа. Вторая точка вызывает метод `Int`. Этот метод работает со значением `Rat`, то есть с рациональным числом.

{% include nav.html %}
