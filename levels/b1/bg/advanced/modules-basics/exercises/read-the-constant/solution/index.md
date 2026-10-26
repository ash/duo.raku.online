---
title: 'Solution: Прочетете константата'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

Програмата, `read-pi.raku`:

```raku
need Circle;

say $Circle::pi;
```

🦋 Можете да намерите двата файла с изходния код в директорията [exercises/advanced/modules-basics/read-the-constant](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/read-the-constant).

## Изход

```console
$ raku -I. read-pi.raku
3.14
```

## Коментари

1. `need Circle` зарежда модула, но не импортира никакви имена. Затова Raku не би разпознал `$pi` самостоятелно.

1. Програмата достига до `our` променливата чрез името на модула, като `$Circle::pi`.

{% include nav.html %}
