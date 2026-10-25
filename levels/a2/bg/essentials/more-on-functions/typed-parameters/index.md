---
title: Типизирани параметри
---

{% include menu.html %}

В Raku параметърът на функция може да има тип. Тогава той приема само стойности от този тип. Това много прилича на [типизираните променливи](/bg/essentials/typed-variables/type-constraints/).

```raku
sub add(Int $x, Int $y) { $x + $y }
```

Сега аргументите на функцията трябва да са цели числа.

```raku
say add(10, 20);
# say add(pi, e); # Грешка
```

Можете да предавате само стойности `Int`. Всеки друг тип дава грешка по време на компилация. Такава грешка идва, преди програмата да се стартира.

```
$ raku t.raku
===SORRY!=== Error while compiling t.raku
Calling add(Num, Num) will never work with declared signature (Int $x, Int $y)
at t.raku:5
------> say ⏏add(pi, e);
```

Обърнете внимание, че тук Raku не превръща типовете вместо вас. В други случаи такова превръщане е възможно.

```raku
# say add('3', '4'); # Грешка
say '3' + '4'; # ОК и е 7
```

%%tipblock
## Дали грешката е по време на компилация?
Вижте началото на съобщението за грешка. Започва ли то с `===SORRY!=== Error while compiling`? Тогава грешката е станала по време на компилация.
%%/tipblock

{% include nav.html %}
