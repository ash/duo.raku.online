---
title: 'Solution: Пребройте в торба'
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
my $words = bag('the cat sat on the mat'.words);

say $words<the>;
say $words.total;
```

🦋 Можете да намерите пълния код във файла [bag-count.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/bag-count.raku).

## Резултат

```
2
6
```

## Коментари

1. `'the cat sat on the mat'.words` дава шестте думи. `bag` брои всяка дума. Индексът `<the>` връща колко пъти торбата е видяла `the`. Отговорът е две.

1. Методът `total` събира всички броячи. Тази сума е броят на думите в торбата: `6`.

{% include nav.html %}
