---
title: 'Решение: Замена значений'
---

{% include menu.html %}

В этой программе мы используем элементы синтаксиса Raku из раздела о [скалярных переменных](/ru/essentials/scalar-variables).

## Код

```raku
my ($a, $b) = 10, 20;
($a, $b) = $b, $a;
say "$a, $b";
```

🦋 Вы можете найти исходный код в файле [swap.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/swap.raku).

## Вывод

Запустите программу и проверьте, что она печатает значения в другом порядке.

```console
$ raku exercises/scalar-variables/swap.raku
20, 10
```

## Комментарии

В этой программе три шага. Она создаёт переменные и присваивает им значения, меняет значения местами и печатает их. Каждый шаг использует обе переменные в одной инструкции. Самое интересное — то, как переменные обмениваются значениями:

```raku
($a, $b) = $b, $a;
```

Скобки с левой стороны обязательны. Но их также можно добавить с правой стороны:

```raku
($a, $b) = ($b, $a);
```

Что будет, если убрать скобки?

```raku
$a, $b = $b, $a;
```

В этом случае Raku предупредит вас, что `$a` с правой стороны не используется:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of $a in sink context (lines 2, 2)
10, 20
```

На самом деле эта строка делает то же, что и бесполезное присваивание `$b = $b`. Это легко увидеть, если изменить значения справа, например:

```raku
$a, $b = 2 * $b, 3 * $a;
```

В этот раз предупреждений ещё больше. Но также видно, что значение изменилось только у `$b`:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of "*" in expression "3 * $a" in sink context (line 2)
Useless use of $a in sink context (line 2)
10, 40
```

{% assign human=1 %}
{% include nav.html %}
