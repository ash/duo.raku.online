---
title: 'Solution: Класифицирайте размера'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
multi sub size(Int $n where $n.abs < 10)  { 'small' }
multi sub size(Int $n where $n.abs < 100) { 'medium' }
multi sub size(Int $n)                    { 'large' }

say size(7);
say size(30);
say size(-250);
```

🦋 Можете да намерите изходния код във файла [classify-sign.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/classify-sign.raku).

## Изход

```
small
medium
large
```

## Коментари

1. И трите кандидата приемат един-единствен `Int`, затова без клаузите `where` биха се сблъскали. Условията на първите два ги правят различни. Третият улавя всичко останало.

1. Клаузите `where` проверяват `$n.abs`. Затова само големината на числото решава резултата, а знакът няма значение. `size(7)` съвпада с първия кандидат (`small`). В `size(-250)` абсолютната стойност е `250`. Тя не отговаря на нито едно от двете условия и отива към кандидата уловител (`large`).

1. Кандидатите се проверяват от най-специфичния към най-общия. Тук това е точно редът, в който са написани.

{% include nav.html %}
