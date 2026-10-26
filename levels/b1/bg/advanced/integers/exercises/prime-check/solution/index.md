---
title: 'Solution: Просто или не'
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
say 97.is-prime;
say 91.is-prime;
```

🦋 Можете да намерите пълния код във файла [prime-check.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/prime-check.raku).

## Резултат

```
True
False
```

## Коментари

1. `97` няма делители освен `1` и себе си, затова `is-prime` връща `True`.

1. `91` изглежда просто, но е `7 × 13`, затова `is-prime` връща `False`. Методът намира множителите вместо вас. В това е целият смисъл на метода.

{% include nav.html %}
