---
title: 'Solution: Изведете хеш'
---

{% include menu.html %}

Ето едно възможно решение на задачата.

## Код

```raku
my %h = beta => 2, alpha => 1;
dd %h;
```

🦋 Можете да намерите пълния код във файла [dump-a-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-a-hash.raku).

## Резултат

```
{:alpha(1), :beta(2)}
```

## Коментари

1. `dd` отпечатва хеша в кодоподобна форма. Всяка двойка се показва като `:ключ(стойност)`.

1. Ключовете се отпечатват в сортиран ред, така че `alpha` идва преди `beta`. Това става, въпреки че `beta` е написан първи.

{% include nav.html %}
