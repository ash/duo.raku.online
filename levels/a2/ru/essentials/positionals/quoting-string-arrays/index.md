---
title: Взятие в кавычки массивов строк
---

{% include menu.html %}

Иногда элементы массива — это короткие строки без пробелов. В Raku есть удобный способ дать такому массиву значения.

```raku
my @digits = <zero one two three four five six seven eight nine>;
```

Вы можете поставить дополнительные пробелы вокруг угловых скобок. Или можно писать их без пробелов. Решать вам. Компилятор принимает оба способа.

```raku
my @digits = < zero one two three four five six seven eight nine >;
```

Оба способа дают тот же результат, что и этот простой вариант:

```raku
my @digits = 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine';
```

%%tipblock
## Массив или список

Обратите внимание на одну вещь в примерах выше. Кавычки `< . . . >` создают `List`. Они не создают `Array`. Это можно проверить с помощью метода `WHAT`:

```raku
say <a b c>.WHAT; # (List)
```

Но его можно присвоить массиву. Тогда вы получите массив с элементами списка.

```raku
my @a = <a b c>;
say @a.WHAT; # (Array)
```

%%/tipblock

{% include nav.html %}
