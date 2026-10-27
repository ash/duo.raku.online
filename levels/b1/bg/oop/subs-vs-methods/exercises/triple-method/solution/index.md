---
title: 'Решение: Утрояване като метод'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

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

1. Като метод `triple` принадлежи на обекта и използва `n` на обекта. Не подавате нищо отвън.

1. Във версията с подпрограма данните идват като аргумент. Тук данните живеят в обекта. И двете версии дават `21`.

{% include nav.html %}
