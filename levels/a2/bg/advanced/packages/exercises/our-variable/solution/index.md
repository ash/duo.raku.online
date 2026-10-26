---
title: 'Solution: Променлива our'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. `our $port` е част от пространството от имена `Config`. Затова можете да я вземете отвън като `$Config::port`. Това отпечатва `8080`.

1. `my $secret` е лексикална. Тя е частна за блока на пакета. Затова не е в пространството от имена. Пътят `$Config::secret` не намира нищо. Той дава недефинирана стойност. Затова `.defined` е `False`. Това е разликата, която прави `our`.

{% include nav.html %}
