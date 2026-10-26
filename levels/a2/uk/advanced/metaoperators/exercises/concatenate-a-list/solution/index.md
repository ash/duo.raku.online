---
title: 'Розв''язання: Зберіть URL'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my @parts = <http :// example .com>;

my $url = [~] @parts;
say $url;
say $url.chars;
```

🦋 Вихідний код можна знайти у файлі [concatenate-a-list.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/metaoperators/concatenate-a-list.raku).

## Вивід

```
http://example.com
18
```

## Коментарі

1. Масив використовує лапки з кутових дужок, `<...>`. Це те саме, що `'http', '://', 'example', '.com'`.

1. `[~]` — це метаоператор згортки. Він ставить оператор `~` між усіма елементами. Оператор `~` з'єднує рядки. Тож `[~] @parts` з'єднує чотири частини в один рядок, `http://example.com`.

1. Результат лежить у змінній `$url`. Тож ми можемо використати його знову. `$url.chars` дає довжину всього URL. У ньому `18` символів.

{% include nav.html %}
