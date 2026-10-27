---
title: 'Решение: Утрояване като метод'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
class Number {
    has $.n;

    method triple {
        $.n * 3;
    }
}

say Number.new(n => 7).triple;
```

🦋 Намерете програмата във файла [triple-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/subs-vs-methods/triple-method.raku).

## Изход

```
21
```

## Коментари

1. Тук `triple` е метод. Той принадлежи на обекта. Той работи със собственото `n` на обекта. Не му подавате нищо.

1. Сравнете го с подпрограмата. Там данните идват като аргумент. Тук данните са в обекта. И двете програми дават `21`.

{% include nav.html %}
