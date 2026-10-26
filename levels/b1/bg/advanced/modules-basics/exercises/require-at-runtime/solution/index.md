---
title: 'Solution: Заредете по време на изпълнение'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

Програмата, `require-import.raku`:

```raku
sub MAIN(Bool :$quiet) {
    if $quiet {
        say 'Silence.';
    }
    else {
        require Greeting <&hello>;
        say hello('Sam');
    }
}
```

🦋 Можете да намерите двата файла с изходния код в директорията [exercises/advanced/modules-basics/require-at-runtime](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/require-at-runtime).

## Изход

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Коментари

1. `require` зарежда модула по време на изпълнение вместо по време на компилация. Сам по себе си той не импортира нищо. Затова Raku не би познал самостоятелно `hello`.

1. Списъкът `<&hello>` казва на `require` да импортира този един символ. Така след този оператор можете да извикате `hello('Sam')` директно и тя дава `Hello, Sam!`.

1. Точно *за това* е `require`. Тъй като работи по време на изпълнение, той може да бъде вътре в `if`. Когато подадете `--quiet`, този клон се прескача и модулът никога не се зарежда. `use` по време на компилация не би могъл да избегне зареждането му.

{% include nav.html %}
