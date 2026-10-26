---
title: 'Розв''язання: Зберіть URL'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Масив записано за допомогою лапок із кутових дужок `<...>`. Це означає те саме, що й `'http', '://', 'example', '.com'`.

1. Метаоператор згортки `[~]` ставить оператор `~` між усіма елементами. Цей оператор з'єднує рядки. Тож `[~] @parts` з'єднує чотири частини в один рядок `http://example.com`.

1. Ми зберігаємо результат у `$url`, щоб використати його знову. Потім `$url.chars` показує, що повний URL має довжину `18` символів.

{% include nav.html %}
