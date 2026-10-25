---
title: Взятие в кавычки массивов строк
---

{% include menu.html %}

В некоторых строковых массивах только короткие строки без пробелов. Для таких массивов Raku предлагает удобный синтаксис, чтобы задать их значения.

```raku
my @digits = <zero one two three four five six seven eight nine>;
```

Вы сами решаете, добавлять ли дополнительные пробелы вокруг угловых скобок. Компилятор принимает оба варианта.

```raku
my @digits = < zero one two three four five six seven eight nine >;
```

Обе формы означают то же самое, что и этот простой, прямой вариант:

```raku
my @digits = 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine';
```

%%tipblock
## Массив vs Список

Обратите внимание, что в примерах выше кавычки `< . . . >` создают `List`, а не `Array`. Это можно проверить, если вызвать метод `WHAT`:

```raku
say <a b c>.WHAT; # (List)
```

Однако если присвоить его массиву, массив получит те же элементы.

```raku
my @a = <a b c>;
say @a.WHAT; # (Array)
```

%%/tipblock

{% include nav.html %}
