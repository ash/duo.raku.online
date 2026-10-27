---
title: 'Розв''язання: Друк без переходу рядка'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. `$*OUT.print` не додає символу нового рядка після свого тексту, тож `a` і `b` лишаються в одному рядку.

1. `$*OUT.say` пише `c`, а потім символ нового рядка, і це завершує рядок `abc`.

{% include nav.html %}
