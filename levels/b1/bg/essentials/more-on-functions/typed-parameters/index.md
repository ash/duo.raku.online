---
title: Типизирани параметри
---

{% include menu.html %}

В Raku можете да ограничите параметрите на функцията до определен тип. Това е много подобно на [типизираните променливи](/bg/essentials/typed-variables/type-constraints/).

```raku
sub add(Int $x, Int $y) { $x + $y }
```

Сега функцията изисква нейните аргументи да бъдат цели числа.

```raku
say add(10, 20);
# say add(pi, e); # Грешка
```

Ако предадете стойност от тип, различен от `Int`, получавате грешка по време на компилация.

```
$ raku t.raku
===SORRY!=== Error while compiling t.raku
Calling add(Num, Num) will never work with declared signature (Int $x, Int $y)
at t.raku:5
------> say ⏏add(pi, e);
```

Обърнете внимание, че тук Raku няма автоматично да превърне типовете. В други случаи Raku може да направи такова превръщане.

```raku
# say add('3', '4'); # Грешка
say '3' + '4'; # ОК и е 7
```

%%tipblock
## Как да разберете дали грешката е по време на компилация
Ако съобщението за грешка започва с `===SORRY!=== Error while compiling`, грешката е станала по време на компилация.
%%/tipblock

{% include nav.html %}
