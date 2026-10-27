---
title: 'Розв''язання: Try або типове значення'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Блок `try`, який не спрацьовує, дає невизначене значення.

1. Тож оператор «визначене або» `//` повертає свою праву частину, `'default'`. Це чистий спосіб відновитися після збою із запасним значенням в одному рядку.

{% include nav.html %}
