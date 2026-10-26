---
title: 'Solution: Построете URL'
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
my @parts = <http :// example .com>;

my $url = [~] @parts;
say $url;
say $url.chars;
```

🦋 Можете да намерите пълния код във файла [concatenate-a-list.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/metaoperators/concatenate-a-list.raku).

## Резултат

```
http://example.com
18
```

## Коментари

1. Масивът използва формата за цитиране с ъглови скоби, `<...>`. Това е същото като `'http', '://', 'example', '.com'`.

1. `[~]` е метаоператор за редукция. Той поставя оператора `~` между всички елементи. Операторът `~` съединява низове. Така `[~] @parts` съединява четирите части в един низ, `http://example.com`.

1. Резултатът е в променливата `$url`. Затова можем да го използваме отново. `$url.chars` дава дължината на целия URL адрес. Тя е `18` символа.

{% include nav.html %}
