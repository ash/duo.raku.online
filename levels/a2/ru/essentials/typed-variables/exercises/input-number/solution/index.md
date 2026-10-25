---
title: 'Решение: Приведение ввода пользователя к числу'
---

{% include menu.html %}

Программа может быть очень простой:

## Код

```raku
my Int $n = prompt 'Введите число: ';
say $n;
```

🦋 Вы можете найти исходный код в файле [input-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/input-number.raku).

## Пример

Запустите её и введите целое число. Оно может быть положительным или отрицательным:

```console
$ raku exercises/typed-variables/input-number.raku
Введите число: -42
-42
```

## Комментарии

Мы уже [видели](/ru/essentials/typed-variables/allomorphs), что `prompt` возвращает значение `IntStr`. Это значение можно присвоить переменной типа `Int`. Его не нужно преобразовывать.

Но будьте осторожны. Иногда вы вводите строку, которую Raku не может преобразовать в целое число. Тогда программа останавливается с исключением.

{% include nav.html %}
