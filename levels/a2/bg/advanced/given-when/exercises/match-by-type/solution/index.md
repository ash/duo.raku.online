---
title: 'Solution: Съпоставяне по тип'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. Понякога `when` има тип. Тогава умното съвпадение проверява дали темата *е от този тип*. `3.14` не е `Int`. Затова Raku пропуска първия `when`.

1. В Raku число с десетична точка, като `3.14`, е `Rat`. `Rat` е рационално число, или дроб. Затова вторият `when` съвпада. Програмата отпечатва `rational`.

{% include nav.html %}
