---
title: 'Solution: Прочетете константата'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. `need Circle` зарежда модула. Но той не импортира никакви имена. Затова Raku не познава `$pi` самостоятелно, без името на модула.

1. Стигате до `our` променливата чрез името на модула. Пишете я като `$Circle::pi`.

{% include nav.html %}
