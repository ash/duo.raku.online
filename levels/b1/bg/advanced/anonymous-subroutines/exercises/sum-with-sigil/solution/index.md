---
title: 'Solution: Сума със сигил `&`'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
my &add = -> $a, $b {
    $a + $b;
};

say add(2, 3);
```

🦋 Можете да намерите изходния код във файла [sum-with-sigil.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/sum-with-sigil.raku).

## Изход

```
5
```

## Коментари

1. Стрелковият блок има два параметъра, `-> $a, $b`. Ето защо анонимната подпрограма се нуждае от два аргумента.

1. Променливата е декларирана със сигила `&`. Затова можете да я извикате като `add(2, 3)`, точно като именувана подпрограма. В извикването не ви трябва сигил. Това дава `5`.

{% include nav.html %}
