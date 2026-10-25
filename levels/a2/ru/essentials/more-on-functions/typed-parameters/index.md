---
title: Типизированные параметры
---

{% include menu.html %}

В Raku у параметра функции может быть тип. Тогда он принимает только значения этого типа. Это очень похоже на [типизированные переменные](/ru/essentials/typed-variables/type-constraints/).

```raku
sub add(Int $x, Int $y) { $x + $y }
```

Теперь аргументы функции должны быть целыми числами.

```raku
say add(10, 20);
# say add(pi, e); # Ошибка
```

Вы можете передавать только значения `Int`. Любой другой тип даёт ошибку времени компиляции. Такая ошибка появляется ещё до запуска программы.

```
$ raku t.raku
===SORRY!=== Error while compiling t.raku
Calling add(Num, Num) will never work with declared signature (Int $x, Int $y)
at t.raku:5
------> say ⏏add(pi, e);
```

Обратите внимание: здесь Raku сам не преобразует типы. В других случаях такое преобразование возможно.

```raku
# say add('3', '4'); # Ошибка
say '3' + '4'; # OK и результат 7
```

%%tipblock
## Это ошибка времени компиляции?
Посмотрите на начало сообщения об ошибке. Оно начинается с `===SORRY!=== Error while compiling`? Тогда ошибка произошла во время компиляции.
%%/tipblock

{% include nav.html %}
