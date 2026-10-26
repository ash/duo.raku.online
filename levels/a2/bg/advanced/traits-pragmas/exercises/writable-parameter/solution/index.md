---
title: 'Solution: Записваем параметър'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
sub double($n is rw) {
    $n *= 2;
}

my $score = 21;
double($score);
say $score;
```

🦋 Можете да намерите изходния код във файла [writable-parameter.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/writable-parameter.raku).

## Изход

```
42
```

## Коментари

1. `is rw` свързва параметъра `$n` с променливата `$score` на извикващия. Така `$n *= 2` вътре в `double` променя самата `$score`. Затова програмата отпечатва `42`.

1. Без `is rw` параметърът е само за четене. Тогава `$n *= 2` дава грешка. С `is copy` подпрограмата `double` получава свое копие на стойността. Тя може да променя това копие. Но `$score` остава `21`.

{% include nav.html %}
