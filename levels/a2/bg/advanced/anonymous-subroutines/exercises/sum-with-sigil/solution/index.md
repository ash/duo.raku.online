---
title: 'Solution: Сума със сигил `&`'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. Стрелковият блок има два параметъра: `-> $a, $b`. Затова анонимната подпрограма приема два аргумента.

1. Променливата има сигила `&`. Затова можете да я извикате като `add(2, 3)`. Тя работи като обикновена подпрограма с име. В извикването не пишете сигила. Резултатът е `5`.

{% include nav.html %}
