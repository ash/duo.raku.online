---
title: 'Решение: Соберите URL'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
my @parts = <http :// example .com>;

my $url = [~] @parts;
say $url;
say $url.chars;
```

🦋 Исходный код можно найти в файле [concatenate-a-list.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/metaoperators/concatenate-a-list.raku).

## Вывод

```
http://example.com
18
```

## Комментарии

1. Массив записан с помощью кавычек из угловых скобок `<...>`. Это означает то же самое, что `'http', '://', 'example', '.com'`.

1. Метаоператор свёртки `[~]` ставит оператор `~` между всеми элементами. Этот оператор соединяет строки. Поэтому `[~] @parts` склеивает четыре части в одну строку `http://example.com`.

1. Мы сохраняем результат в `$url`, чтобы использовать его снова. Затем `$url.chars` показывает, что длина собранного URL — `18` символов.

{% include nav.html %}
