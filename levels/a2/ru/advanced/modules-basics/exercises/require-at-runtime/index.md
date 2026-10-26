---
title: Загрузка во время выполнения
translations_gpt:
---

{% include menu.html %}

## Задача

Вот модуль `Greeting.rakumod`. Он экспортирует подпрограмму `hello`:

```raku
unit module Greeting;

sub hello($name) is export {
    "Hello, $name!"
}
```

Загрузите этот модуль с помощью `require`, а не `use`. Тогда программа загружает его **во время выполнения**, пока программа работает. `require` не импортирует имена автоматически. Поэтому укажите нужное имя вот так: `require Greeting <&hello>;`. Затем вызовите `hello('Sam')` и напечатайте результат.

Теперь покажите, чем полезна загрузка во время выполнения. Поставьте `require` внутрь `sub MAIN` с флагом `--quiet`. Модуль загружается *только* тогда, когда вам правда нужно приветствие. С `--quiet` программа совсем не трогает модуль. Она только печатает `Silence.`

## Пример

Запустите программу с модулем в пути поиска. Она печатает:

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Решение

✅ [Посмотреть решение](solution)

{% include nav.html %}
