---
title: 'Решение: Утрояване като подпрограма'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
sub triple($x) {
    $x * 3;
}

say triple(7);
```

🦋 Намерете програмата във файла [triple-sub.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/subs-vs-methods/triple-sub.raku).

## Изход

```
21
```

## Коментари

1. Като подпрограма `triple` стои сама за себе си. Тя получава като аргумент стойността, с която работи.

1. Другото упражнение от тази двойка решава същата задача с метод. Така можете да сравните двата подхода.

{% include nav.html %}
