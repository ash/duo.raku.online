---
title: 'Solution: Съпоставяне по тип'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
my $value = 3.14;

given $value {
    when Int { say 'integer' }
    when Rat { say 'rational' }
    when Str { say 'string' }
}
```

🦋 Можете да намерите изходния код във файла [match-by-type.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/match-by-type.raku).

## Изход

```
rational
```

## Коментари

1. Тук стойността за съвпадение е тип. Тогава умното съвпадение проверява дали темата *е от този тип*. `3.14` не е `Int`, затова първият `when` се пропуска.

1. В Raku десетично число като `3.14` е `Rat`, тоест рационално число. Затова вторият `when` съвпада и програмата отпечатва `rational`.

{% include nav.html %}
