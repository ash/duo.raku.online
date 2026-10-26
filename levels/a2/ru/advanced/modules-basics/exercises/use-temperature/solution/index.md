---
title: 'Решение: Используйте конвертер'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. `use Temperature` загружает модуль. Ещё он импортирует экспортированную подпрограмму `c-to-f`. Поэтому программа может вызвать её напрямую.

1. `sub MAIN($celsius)` получает аргумент командной строки. Поэтому вы выбираете температуру, когда запускаете программу. Она не задана в коде заранее. Без аргумента Raku автоматически печатает сообщение об использовании. Это сообщение показывает, как запускать программу.

1. Raku должен найти модуль. Поэтому вы запускаете программу с `-I.`. Тогда Raku ищет `Temperature.rakumod` в текущем каталоге. Программа переводит `100` °C в `212` °F.

{% include nav.html %}
