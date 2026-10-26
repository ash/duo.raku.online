---
title: 'Solution: Просто или не'
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. Можете да разделите `97` само на `1` и на себе си. Затова `is-prime` връща `True`.

1. `91` изглежда просто, но е `7 × 13`. Затова `is-prime` връща `False`. Методът намира множителите вместо вас. Ето защо имаме този метод.

{% include nav.html %}
