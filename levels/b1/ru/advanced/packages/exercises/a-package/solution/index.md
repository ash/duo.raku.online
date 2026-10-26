---
title: 'Решение: Пакет'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. И переменная, и подпрограмма объявлены с `our`. Поэтому обе становятся частью пространства имён `Temperature`, и к ним можно обратиться снаружи.

1. К переменной обращаются как `$Temperature::freezing`: сигил, имя пакета, затем имя переменной. Подпрограмму вызывают как `Temperature::fahrenheit(100)`. Перевод `100` даёт `100 * 9/5 + 32`, то есть `212`.

1. Простой `package` даёт вам только пространство имён. Для библиотеки, которую используют снова, мы бы взяли `module`. При работе с объектами мы бы взяли `class`. Но пространство имён во всех случаях работает одинаково.

{% include nav.html %}
