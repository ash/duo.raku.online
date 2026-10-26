---
title: 'Решение: Соберите URL'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Массив записан в кавычках из угловых скобок, `<...>`. Это то же самое, что `'http', '://', 'example', '.com'`.

1. `[~]` — это метаоператор свёртки. Он ставит оператор `~` между всеми элементами. Оператор `~` соединяет строки. Поэтому `[~] @parts` соединяет четыре части в одну строку, `http://example.com`.

1. Результат лежит в переменной `$url`. Поэтому мы можем использовать его снова. `$url.chars` даёт длину всего URL. Это `18` символов.

{% include nav.html %}
