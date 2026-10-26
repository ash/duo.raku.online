---
title: Вправа «Завантаження під час виконання»
translations_gpt:
---

{% include menu.html %}

## Завдання

У вас є модуль `Greeting.rakumod`, який експортує підпрограму `hello`:

```raku
unit module Greeting;

sub hello($name) is export {
    "Hello, $name!"
}
```

Завантажте цей модуль через `require` замість `use`. Тоді він завантажується **під час виконання**. `require` не імпортує імен автоматично. Тож вам треба перелічити потрібний символ через `require Greeting <&hello>;`. Потім викличте `hello('Sam')` і виведіть результат.

Ця задача також показує, чим корисне завантаження під час виконання. Покладіть `require` усередину `sub MAIN` із прапорцем `--quiet`. Тож модуль завантажується *лише* тоді, коли привітання справді потрібне. З `--quiet` програма виводить `Silence.` і зовсім не торкається модуля.

## Приклад

Якщо запустити її з модулем на шляху пошуку, програма виводить:

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Рішення

✅ [Дивіться рішення](solution)

{% include nav.html %}
