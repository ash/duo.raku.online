---
title: 'Решение: Вывод без перевода строки'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
$*OUT.print('a');
$*OUT.print('b');
$*OUT.say('c');
```

🦋 Исходный код можно найти в файле [print-without-newline.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/print-without-newline.raku).

## Вывод

```
abc
```

## Комментарии

1. `$*OUT.print` не добавляет перевод строки после своего текста, поэтому `a` и `b` остаются на одной строке.

1. `$*OUT.say` пишет `c`, а затем перевод строки, и это завершает строку `abc`.

{% include nav.html %}
