---
title: Цитування рядкових масивів
---

{% include menu.html %}

Іноді елементи масиву — це короткі рядки без пробілів. У Raku є зручний спосіб дати такому масиву значення.

```raku
my @digits = <zero one two three four five six seven eight nine>;
```

Ви можете поставити додаткові пробіли навколо кутових дужок. Або ви можете писати їх без пробілів. Вирішувати вам. Компілятор приймає обидва способи.

```raku
my @digits = < zero one two three four five six seven eight nine >;
```

Обидва способи дають той самий результат, що й ця проста версія:

```raku
my @digits = 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine';
```

%%tipblock
## Масив чи список

Зверніть увагу на одну річ у прикладах вище. Цитування `< . . . >` створює `List`. Воно не створює `Array`. Ви можете перевірити це методом `WHAT`:

```raku
say <a b c>.WHAT; # (List)
```

Але ви можете присвоїти його масиву. Тоді ви отримаєте масив з елементами списку.

```raku
my @a = <a b c>;
say @a.WHAT; # (Array)
```

%%/tipblock

{% include nav.html %}
