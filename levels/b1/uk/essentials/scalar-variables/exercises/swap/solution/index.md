---
title: 'Розв''язання: Обмін значеннями'
---

{% include menu.html %}

У цій програмі ми використовуємо частини синтаксису Raku з розділу про [скалярні змінні](/uk/essentials/scalar-variables).

## Код

```raku
my ($a, $b) = 10, 20;
($a, $b) = $b, $a;
say "$a, $b";
```

🦋 Вихідний код можна знайти у файлі [swap.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/swap.raku).

## Вивід

Запустіть програму і перевірте, що вона виводить значення в іншому порядку.

```console
$ raku exercises/scalar-variables/swap.raku
20, 10
```

## Коментарі

Ця програма має три кроки. Вона створює змінні та присвоює їм значення, міняє значення місцями і виводить їх. Кожен крок використовує обидві змінні в одному виразі. Найцікавіше — це те, як змінні обмінюються значеннями:

```raku
($a, $b) = $b, $a;
```

Дужки з лівого боку обов'язкові. Але ви можете додати їх і з правого боку:

```raku
($a, $b) = ($b, $a);
```

Що станеться, якщо пропустити дужки?

```raku
$a, $b = $b, $a;
```

У цьому разі Raku попереджає вас, що `$a` праворуч не використовується:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of $a in sink context (lines 2, 2)
10, 20
```

Насправді цей рядок робить те саме, що й непотрібне присвоєння `$b = $b`. Це легко побачити, якщо змінити значення праворуч, наприклад:

```raku
$a, $b = 2 * $b, 3 * $a;
```

Цього разу попереджень ще більше. Але ви також бачите, що змінилося значення лише `$b`:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of "*" in expression "3 * $a" in sink context (line 2)
Useless use of $a in sink context (line 2)
10, 40
```

{% include nav.html %}
