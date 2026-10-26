---
title: 'Решение: Поглощающие именованные аргументы'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. Фиксированный позиционный параметр `$name` получает значение первым. Затем поглощающий `*%opts` собирает все оставшиеся именованные аргументы в хеш.

1. `%opts.sort` упорядочивает пары по ключу, поэтому вывод всегда одинаковый: `colour` идёт перед `size`. Метод `.map` превращает каждую пару в строку `key=value` с помощью `.key` и `.value`. Затем `.join(', ')` соединяет строки вместе.

1. Итоговая строка включает значения `$name` и уже готового `$details`. Это даёт `Anna: colour=red, size=5`.

{% include nav.html %}
