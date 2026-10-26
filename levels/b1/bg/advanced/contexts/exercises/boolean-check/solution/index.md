---
title: 'Solution: Булева проверка'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
my @empty;
say ?@empty;
```

🦋 Можете да намерите изходния код във файла [boolean-check.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/contexts/boolean-check.raku).

## Резултат

```
False
```

## Коментари

1. Префиксът `?` задава булев контекст.

1. Празен масив е лъжа и точно на това разчита `if @array`.

{% include nav.html %}
