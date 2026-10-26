---
title: 'Розв''язання: Типізований чи нетипізований'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my $untyped;
my Int $typed;

dd $untyped;
dd $typed;

$untyped = 42;
$typed = 42;

dd $untyped;
dd $typed;
```

🦋 Вихідний код можна знайти у файлі [reuse-the-container.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/reuse-the-container.raku).

## Вивід

```
$untyped = Any
Int $typed = Int
$untyped = 42
Int $typed = 42
```

## Коментарі

1. `dd` показує ці два контейнери по-різному. Для нетипізованого він виводить лише `$untyped`. Для типізованого він додає попереду оголошений тип: `Int $typed`. Саме це й змінює оголошений тип.

1. Порожні значення теж різні. Нетипізований контейнер починає з `Any`. Це базове невизначене значення. Типізований контейнер починає з невизначеного значення *свого* типу. Тут це `Int`.

1. Потім обидві змінні отримують `42`. Тепер значення виглядають однаково. Але `$typed` досі має свій тип. Він не приймає значення, яке не є цілим числом. `$untyped` приймає будь-яке значення.

{% include nav.html %}
