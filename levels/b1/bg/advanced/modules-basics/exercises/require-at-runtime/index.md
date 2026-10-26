---
title: Заредете по време на изпълнение
translations_gpt:
---

{% include menu.html %}

## Задача

Имате модул `Greeting.rakumod`, който експортира подпрограма `hello`:

```raku
unit module Greeting;

sub hello($name) is export {
    "Hello, $name!"
}
```

Заредете този модул с `require` вместо с `use`. Тогава той се зарежда по **време на изпълнение**. `require` не импортира имена автоматично. Затова трябва да посочите символа, който искате, с `require Greeting <&hello>;`. След това извикайте `hello('Sam')` и отпечатайте резултата.

Тази задача показва и за какво е полезно зареждането по време на изпълнение. Сложете `require` вътре в `sub MAIN` с флаг `--quiet`. Тогава модулът се зарежда *само* когато поздравът наистина е нужен. С `--quiet` програмата отпечатва `Silence.` и изобщо не докосва модула.

## Пример

Ако я стартирате с модула в пътя за търсене, програмата отпечатва:

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Решение

✅ [Вижте решението](solution)

{% include nav.html %}
