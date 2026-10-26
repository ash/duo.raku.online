---
title: Заредете по време на изпълнение
translations_gpt:
---

{% include menu.html %}

## Задача

Ето модул, `Greeting.rakumod`. Той експортира подпрограма `hello`:

```raku
unit module Greeting;

sub hello($name) is export {
    "Hello, $name!"
}
```

Заредете този модул с `require`, а не с `use`. Тогава програмата го зарежда по **време на изпълнение**, докато работи. `require` не импортира имена автоматично. Затова посочете името, което искате, ето така: `require Greeting <&hello>;`. След това извикайте `hello('Sam')` и отпечатайте резултата.

Сега покажете защо зареждането по време на изпълнение е полезно. Сложете `require` вътре в `sub MAIN` с флаг `--quiet`. Модулът се зарежда *само* когато наистина искате поздрав. С `--quiet` програмата изобщо не докосва модула. Тя само отпечатва `Silence.`

## Пример

Стартирайте програмата с модула в пътя за търсене. Тя отпечатва:

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Решение

✅ [Вижте решението](solution)

{% include nav.html %}
