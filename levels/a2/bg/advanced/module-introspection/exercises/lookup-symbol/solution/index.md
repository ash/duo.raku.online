---
title: 'Solution: Потърсете символ'
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

Програмата, `lookup.raku`:

```raku
use Circle;

say Circle::{'$pi'};
```

🦋 Можете да намерите пълния код във файла [exercises/advanced/module-introspection/lookup-symbol](https://github.com/ash/raku-course/tree/master/exercises/advanced/module-introspection/lookup-symbol).

## Резултат

```console
$ raku -I. lookup.raku
3.14
```

## Коментари

1. `Circle::` е стешът на модула. Използвате име като ключ: `Circle::{'$pi'}`. Това дава стойността за това име. Ключът трябва да има сигила. Имената в списъка също го имат.

1. Получавате същата стойност като с пълното име `$Circle::pi`. Но тук името е обикновен низ. Затова програмата може да създаде името, докато работи. Не е нужно да го пишете в изходния код.

{% include nav.html %}
