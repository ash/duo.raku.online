---
title: Типізовані параметри
---

{% include menu.html %}

У Raku ви можете обмежити параметри функції певним типом. Це дуже схоже на [типізовані змінні](/uk/essentials/typed-variables/type-constraints/).

```raku
sub add(Int $x, Int $y) { $x + $y }
```

Тепер функція вимагає, щоб її аргументи були цілими числами.

```raku
say add(10, 20);
# say add(pi, e); # Помилка
```

Якщо передати значення будь-якого іншого типу, ніж `Int`, буде помилка під час компіляції.

```
$ raku t.raku
===SORRY!=== Error while compiling t.raku
Calling add(Num, Num) will never work with declared signature (Int $x, Int $y)
at t.raku:5
------> say ⏏add(pi, e);
```

Зверніть увагу, що тут Raku не перетворюватиме типи автоматично. В інших випадках він може зробити таке перетворення.

```raku
# say add('3', '4'); # Помилка
say '3' + '4'; # OK і результат 7
```

%%tipblock
## Як дізнатися, чи це помилка під час компіляції
Якщо повідомлення про помилку починається з `===SORRY!=== Error while compiling`, помилка сталася під час компіляції.
%%/tipblock

{% include nav.html %}
