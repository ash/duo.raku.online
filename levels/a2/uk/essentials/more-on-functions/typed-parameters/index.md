---
title: Типізовані параметри
---

{% include menu.html %}

У Raku параметр функції може мати тип. Тоді він приймає лише значення цього типу. Це дуже схоже на [типізовані змінні](/uk/essentials/typed-variables/type-constraints/).

```raku
sub add(Int $x, Int $y) { $x + $y }
```

Тепер аргументи функції мають бути цілими числами.

```raku
say add(10, 20);
# say add(pi, e); # Помилка
```

Ви можете передавати лише значення `Int`. Будь-який інший тип дає помилку під час компіляції. Така помилка буває ще до запуску програми.

```
$ raku t.raku
===SORRY!=== Error while compiling t.raku
Calling add(Num, Num) will never work with declared signature (Int $x, Int $y)
at t.raku:5
------> say ⏏add(pi, e);
```

Зверніть увагу: тут Raku не перетворює типи за вас. В інших випадках таке перетворення можливе.

```raku
# say add('3', '4'); # Помилка
say '3' + '4'; # OK і результат 7
```

%%tipblock
## Це помилка під час компіляції?
Подивіться на початок повідомлення про помилку. Там написано `===SORRY!=== Error while compiling`? Тоді помилка сталася під час компіляції.
%%/tipblock

{% include nav.html %}
