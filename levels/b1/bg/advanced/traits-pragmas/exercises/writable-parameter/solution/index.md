---
title: 'Solution: Записваем параметър'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

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

1. `is rw` свързва параметъра `$n` с променливата на извикващия `$score`. Така `$n *= 2` вътре в `double` променя самата `$score` и затова програмата отпечатва `42`.

1. Без `is rw` параметърът би бил само за четене и `$n *= 2` би предизвикал грешка. С `is copy` вместо това `double` би получила лично копие, което да променя. Тогава `$score` би останала непроменена, `21`.

{% include nav.html %}
