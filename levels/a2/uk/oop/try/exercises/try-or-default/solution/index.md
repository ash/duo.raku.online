---
title: 'Розв''язання: Try або типове значення'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my $r = try { die 'no' } // 'default';

say $r;
```

🦋 Вихідний код можна знайти у файлі [try-or-default.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/try-or-default.raku).

## Вивід

```
default
```

## Коментарі

1. Блок `try` не спрацьовує. Тож його значення невизначене.

1. Тож оператор «визначене або» `//` повертає свою праву частину. Це `'default'`. Так можна чисто працювати далі після збою. Вам потрібні лише один рядок і запасне значення.

{% include nav.html %}
