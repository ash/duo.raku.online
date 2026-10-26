---
title: 'Решение: Используйте конвертер'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

Программа `temperature.raku`:

```raku
use Temperature;

sub MAIN($celsius) {
    say c-to-f($celsius);
}
```

🦋 Оба исходных файла можно найти в каталоге [exercises/advanced/modules-basics/use-temperature](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/use-temperature).

## Вывод

```console
$ raku -I. temperature.raku 100
212
```

## Комментарии

1. `use Temperature` загружает модуль и импортирует его экспортированную подпрограмму `c-to-f`. Поэтому программа может вызывать её напрямую.

1. `sub MAIN($celsius)` получает аргумент командной строки. Поэтому вы выбираете температуру, когда запускаете программу. Она не записана прямо в коде. Если запустить программу без аргумента, Raku автоматически напечатает сообщение об использовании.

1. Raku должен уметь найти модуль. Вот почему вы запускаете программу с `-I.`. Тогда Raku ищет `Temperature.rakumod` в текущем каталоге. Перевод `100` °C даёт `212` °F.

{% include nav.html %}
