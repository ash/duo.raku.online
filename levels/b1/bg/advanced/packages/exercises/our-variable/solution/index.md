---
title: 'Solution: Променлива our'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
package Config {
    our $port = 8080;
    my  $secret = 42;
}

say $Config::port;
say $Config::secret.defined;
```

🦋 Можете да намерите изходния код във файла [our-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/our-variable.raku).

## Изход

```
8080
False
```

## Коментари

1. `our $port` става част от пространството от имена `Config`. Затова можете да достигнете до нея отвън като `$Config::port`, което отпечатва `8080`.

1. `my $secret` е лексикална, което значи, че е частна за блока на пакета. Затова не е в пространството от имена. Пътят `$Config::secret` не намира нищо, само недефинирана стойност, така че `.defined` е `False`. Това е разликата, която прави `our`.

{% include nav.html %}
