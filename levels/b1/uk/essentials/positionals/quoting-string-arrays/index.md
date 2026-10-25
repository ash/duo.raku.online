---
title: Цитування рядкових масивів
---

{% include menu.html %}

Деякі масиви рядків містять лише короткі рядки без пробілів. Для таких масивів Raku пропонує зручний синтаксис, щоб задати їхні значення.

```raku
my @digits = <zero one two three four five six seven eight nine>;
```

Ви можете самі вирішити, чи додавати додаткові пробіли навколо кутових дужок, чи ні. Компілятор приймає обидва варіанти.

```raku
my @digits = < zero one two three four five six seven eight nine >;
```

Обидві форми — це те саме, що й ця проста, пряма версія:

```raku
my @digits = 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine';
```

%%tipblock
## Масив vs Список

Зверніть увагу, що в прикладах вище цитування `< . . . >` створює `List`, а не `Array`. Ви можете перевірити це, якщо викличете метод `WHAT`:

```raku
say <a b c>.WHAT; # (List)
```

Однак якщо ви присвоїте його масиву, масив отримає ті самі елементи.

```raku
my @a = <a b c>;
say @a.WHAT; # (Array)
```

%%/tipblock

{% include nav.html %}
