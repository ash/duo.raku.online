---
title: 'Solution: Акроним'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

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

1. `$phrase.words` връща списъка с думите. За всяка дума цикълът взема първия символ чрез `substr(0, 1)`. След това добавя този символ в края на `$acronym`.

1. Когато всички първи букви са събрани, `uc` превръща резултата в главни букви: `HTML`.

{% include nav.html %}
