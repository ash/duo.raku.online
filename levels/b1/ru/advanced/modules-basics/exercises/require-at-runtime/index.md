---
title: Загрузка во время выполнения
translations_gpt:
---

{% include menu.html %}

## Задача

У вас есть модуль `Greeting.rakumod`, который экспортирует подпрограмму `hello`:

```raku
unit module Greeting;

sub hello($name) is export {
    "Hello, $name!"
}
```

Загрузите этот модуль с помощью `require` вместо `use`. Тогда он загружается **во время выполнения**. `require` не импортирует имена автоматически. Поэтому нужный символ надо указать так: `require Greeting <&hello>;`. Затем вызовите `hello('Sam')` и напечатайте результат.

Эта задача также показывает, чем полезна загрузка во время выполнения. Поместите `require` внутрь `sub MAIN` с флагом `--quiet`. Так модуль загружается *только* тогда, когда приветствие действительно нужно. С `--quiet` программа печатает `Silence.` и вообще не трогает модуль.

## Пример

Если запустить её с модулем в пути поиска, программа печатает:

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Решение

✅ [Посмотреть решение](solution)

{% include nav.html %}
