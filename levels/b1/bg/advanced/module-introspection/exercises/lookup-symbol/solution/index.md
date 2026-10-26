---
title: 'Solution: Потърсете символ'
---

{% include menu.html %}

Ето едно възможно решение.

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

1. `Circle::` е стешът на модула. Ако използвате име като ключ, например `Circle::{'$pi'}`, получавате стойността, записана под него. Ключът трябва да включва сигила, точно както изброените имена.

1. Така получавате същата стойност като с квалифицираното `$Circle::pi`. Но тук името е обикновен низ. Затова то може да бъде създадено по време на изпълнение. Не е нужно да бъде изписано в изходния код.

{% include nav.html %}
