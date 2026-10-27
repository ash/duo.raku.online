---
title: 'Решение: Утрояване като подпрограма'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. Тук `triple` е подпрограма. Тя стои сама. Тя получава стойността за работата си като аргумент.

1. Другото упражнение решава същата задача с метод. Така можете да сравните двата начина.

{% include nav.html %}
