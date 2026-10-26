---
title: 'Решение: Пакет'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
package Temperature {
    our $freezing = 0;
    our sub fahrenheit($c) { $c * 9/5 + 32 }
}

say $Temperature::freezing;
say Temperature::fahrenheit(100);
```

🦋 Исходный код можно найти в файле [a-package.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/a-package.raku).

## Вывод

```
0
212
```

## Комментарии

1. И у переменной, и у подпрограммы есть `our`. Поэтому обе они — часть пространства имён `Temperature`. Код снаружи пакета может до них добраться.

1. Переменную вы получаете через `$Temperature::freezing`. Сначала идёт сигил, потом имя пакета, потом имя переменной. Подпрограмму вы вызываете как `Temperature::fahrenheit(100)`. Для `100` она считает `100 * 9/5 + 32`. Результат — `212`.

1. Простой `package` даёт только пространство имён. Для библиотеки мы бы взяли `module`. Библиотеку можно использовать снова и снова. Позже, с объектами, мы бы взяли `class`. Но пространство имён во всех этих случаях работает одинаково.

{% include nav.html %}
