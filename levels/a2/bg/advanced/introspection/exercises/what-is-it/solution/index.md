---
title: 'Solution: Какво е това'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
my $a = 42;
my $b = 'x';

say $a.WHAT === Int;
say $b.WHAT === Int;
```

🦋 Намерете програмата във файла [what-is-it.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/what-is-it.raku).

## Резултат

```
True
False
```

## Коментари

1. `$a.WHAT` не е низът `Int`. Това е истинският типов обект `Int`. Така `=== Int` го сравнява със самия тип. Резултатът е `True`.

1. `$b` пази низ. Затова неговият `WHAT` е `Str`. Сравнението с `Int` дава `False`. Така `WHAT` е полезен в условия. Той не е само за печатане.

{% include nav.html %}
