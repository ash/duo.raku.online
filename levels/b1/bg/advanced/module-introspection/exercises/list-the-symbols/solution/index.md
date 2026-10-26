---
title: 'Solution: Изброете символите'
---

{% include menu.html %}

Ето едно възможно решение.

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

1. `Circle::` е пакетът на модула. `.keys` изброява имената, които той съдържа, всяко със своя сигил.

1. `.elems` брои тези имена. Модулът дефинира две `our` променливи, така че броят е `2`.

1. `.keys` не обещава определен ред. Затова използваме `.sort`, който дава един и същ азбучен резултат всеки път: `($pi $tau)`. Без сортиране редът на двете имена може да се променя между отделните изпълнения.

{% include nav.html %}
