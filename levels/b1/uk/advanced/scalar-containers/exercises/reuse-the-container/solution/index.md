---
title: 'Розв''язання: Типізований чи нетипізований'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків задачі.

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

1. `dd` описує ці два контейнери по-різному. Для нетипізованого він виводить просто `$untyped`. Для типізованого він ставить попереду оголошений тип: `Int $typed`. Цей префікс — саме те, що змінює оголошений тип.

1. Порожні значення теж різняться. Нетипізований контейнер починає з простого невизначеного значення `Any`. А типізований контейнер починає з невизначеного значення *свого* типу — `Int`.

1. Після того як ви присвоїте обом `42`, значення виглядають однаково. Але `$typed` досі має свій тип, тому він не прийняв би нецілого значення. А `$untyped` приймає будь-що.

{% include nav.html %}
