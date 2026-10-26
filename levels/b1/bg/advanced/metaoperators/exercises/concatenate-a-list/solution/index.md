---
title: 'Solution: Построете URL'
---

{% include menu.html %}

Ето едно възможно решение.

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

1. Масивът е записан с формата за цитиране с ъглови скоби `<...>`. Това означава същото като `'http', '://', 'example', '.com'`.

1. Метаоператорът за редукция `[~]` поставя оператора `~` между всички елементи. Този оператор съединява низове. Така `[~] @parts` съединява четирите части в един низ `http://example.com`.

1. Пазим резултата в `$url`, за да можем да го използваме отново. След това `$url.chars` показва, че целият URL адрес е дълъг `18` символа.

{% include nav.html %}
