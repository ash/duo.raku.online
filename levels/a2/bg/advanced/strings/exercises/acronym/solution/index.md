---
title: 'Solution: Акроним'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
my $phrase = 'hyper text markup language';

my $acronym = '';
for $phrase.words -> $word {
    $acronym ~= $word.substr(0, 1);
}

say $acronym.uc;
```

🦋 Можете да намерите изходния код във файла [acronym.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/acronym.raku).

## Изход

```
HTML
```

## Коментари

1. `$phrase.words` дава списъка с думите. Цикълът взема първия символ на всяка дума със `substr(0, 1)`. Той добавя този символ в края на `$acronym`.

1. Накрая всички първи букви са в `$acronym`. Тогава `uc` превръща резултата в главни букви: `HTML`.

{% include nav.html %}
