---
title: 'Solution: Изравнете частите'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
my @first = 1, 2;
my @second = 3, 4, 5;

my @all = flat(@first, @second);
say @all;
say @all.elems;
```

🦋 Можете да намерите изходния код във файла [flatten-the-parts.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/flatten-the-parts.raku).

## Резултат

```
[1 2 3 4 5]
5
```

## Коментари

1. Кодът `my @all = @first, @second` _не_ дава плосък масив. Той прави вложен масив от два масива: `[[1 2] [3 4 5]]`.

1. Рутината `flat` събира елементите на двата масива. Тя прави една плоска последователност. Програмата пази тази последователност в `@all`. Резултатът има пет елемента.

{% include nav.html %}
