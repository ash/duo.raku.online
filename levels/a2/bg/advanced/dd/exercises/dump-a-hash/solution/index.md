---
title: 'Solution: Изведете хеш'
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. `dd` отпечатва хеша във форма, подобна на код. Всяка двойка изглежда като `:ключ(стойност)`.

1. Ключовете излизат в сортиран ред. Затова `alpha` идва преди `beta`. Но в кода `beta` е първи.

{% include nav.html %}
