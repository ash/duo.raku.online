---
title: 'Решение: Печат без нов ред'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. `$*OUT.print` изписва текста си, но не добавя нов ред. Затова `a` и `b` остават на същия ред.

1. `$*OUT.say` изписва `c` и после нов ред. Това завършва реда `abc`.

{% include nav.html %}
