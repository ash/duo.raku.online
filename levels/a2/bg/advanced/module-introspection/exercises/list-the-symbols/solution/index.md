---
title: 'Solution: Изброете символите'
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

Програмата, `list.raku`:

```raku
use Circle;

say Circle::.keys.elems;
say Circle::.keys.sort;
```

🦋 Можете да намерите пълния код във файла [exercises/advanced/module-introspection/list-the-symbols](https://github.com/ash/raku-course/tree/master/exercises/advanced/module-introspection/list-the-symbols).

## Резултат

```console
$ raku -I. list.raku
2
($pi $tau)
```

## Коментари

1. `Circle::` е пакетът на модула. `.keys` изброява имената в него. Всяко име има своя сигил.

1. `.elems` брои тези имена. Модулът има две `our` променливи. Затова броят е `2`.

1. `.keys` не дава имената в определен ред. Затова използваме `.sort`. Той подрежда имената по азбучен ред. Сега резултатът е винаги същият: `($pi $tau)`. Без сортиране редът на двете имена може да се промени. Той може да е различен при всяко пускане на програмата.

{% include nav.html %}
