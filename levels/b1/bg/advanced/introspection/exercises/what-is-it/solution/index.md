---
title: 'Solution: Какво е това'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

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

1. `$a.WHAT` не е низът `Int`, а истинският типов обект `Int`. Така `=== Int` го сравнява със самия тип и връща `True`.

1. `$b` съдържа низ, така че неговият `WHAT` е `Str`. Когато го сравните с `Int`, получавате `False`. Ето защо `WHAT` е полезен в условия, а не само когато отпечатвате нещо.

{% include nav.html %}
