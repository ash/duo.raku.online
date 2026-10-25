---
title: 'Решение: Замена значений'
---

{% include menu.html %}

Эта программа использует синтаксис Raku из раздела о [скалярных переменных](/ru/essentials/scalar-variables).

## Код

```raku
my ($a, $b) = 10, 20;
($a, $b) = $b, $a;
say "$a, $b";
```

🦋 Вы можете найти исходный код в файле [swap.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/swap.raku).

## Вывод

Запустите программу. Проверьте, что она печатает значения в другом порядке.

```console
$ raku exercises/scalar-variables/swap.raku
20, 10
```

## Комментарии

В программе три шага. Сначала она создаёт переменные и даёт им значения. Потом она меняет значения местами. В конце она их печатает. Каждый шаг использует обе переменные в одной инструкции. Посмотрите на самую интересную часть. Здесь переменные меняются значениями:

```raku
($a, $b) = $b, $a;
```

Слева нужны скобки. Справа их тоже можно добавить:

```raku
($a, $b) = ($b, $a);
```

Что будет без скобок?

```raku
$a, $b = $b, $a;
```

Тогда вы получите предупреждение. Оно говорит, что `$a` справа не используется:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of $a in sink context (lines 2, 2)
10, 20
```

На самом деле эта строка — то же самое, что `$b = $b`. Такое присваивание не делает ничего полезного. Это легко увидеть. Измените значения справа, например, вот так:

```raku
$a, $b = 2 * $b, 3 * $a;
```

Теперь программа печатает ещё больше предупреждений. Но вы видите и кое-что другое. Только `$b` получает новое значение:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of "*" in expression "3 * $a" in sink context (line 2)
Useless use of $a in sink context (line 2)
10, 40
```

{% assign human=1 %}
{% include nav.html %}
