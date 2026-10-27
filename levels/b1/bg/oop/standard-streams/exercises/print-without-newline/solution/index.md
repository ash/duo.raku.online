---
title: 'Решение: Печат без нов ред'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
$*OUT.print('a');
$*OUT.print('b');
$*OUT.say('c');
```

🦋 Намерете програмата във файла [print-without-newline.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/print-without-newline.raku).

## Изход

```
abc
```

## Коментари

1. `$*OUT.print` не добавя нов ред след текста си, така че `a` и `b` остават на един ред.

1. `$*OUT.say` изписва `c` и след това нов ред, което завършва реда `abc`.

{% include nav.html %}
