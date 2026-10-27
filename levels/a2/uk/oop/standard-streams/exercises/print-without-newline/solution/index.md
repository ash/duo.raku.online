---
title: 'Розв''язання: Друк без переходу рядка'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
$*OUT.print('a');
$*OUT.print('b');
$*OUT.say('c');
```

🦋 Вихідний код можна знайти у файлі [print-without-newline.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/print-without-newline.raku).

## Вивід

```
abc
```

## Коментарі

1. `$*OUT.print` пише свій текст, але не додає символу нового рядка. Тож `a` і `b` лишаються в тому самому рядку.

1. `$*OUT.say` пише `c`, а потім символ нового рядка. Це завершує рядок `abc`.

{% include nav.html %}
