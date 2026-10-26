---
title: 'Решение: Поглощающие именованные аргументы'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
sub describe($name, *%opts) {
    my $details = %opts.sort.map({ "{.key}={.value}" }).join(', ');
    "$name: $details";
}

say describe('Anna', colour => 'red', size => 5);
```

🦋 Исходный код можно найти в файле [slurpy-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/slurpy-hash.raku).

## Вывод

```
Anna: colour=red, size=5
```

## Комментарии

1. Сначала фиксированный позиционный параметр `$name` получает своё значение. Потом поглощающий `*%opts` собирает все остальные именованные аргументы. Он кладёт их в хеш.

1. `%opts.sort` сортирует пары по ключу. Поэтому вывод всегда одинаковый: `colour` идёт перед `size`. `.map` делает из каждой пары строку `key=value`. Для этого он использует `.key` и `.value`. Потом `.join(', ')` соединяет строки вместе.

1. Внутри последней строки стоят значения `$name` и `$details`. Мы собрали `$details` раньше. Результат — `Anna: colour=red, size=5`.

{% include nav.html %}
