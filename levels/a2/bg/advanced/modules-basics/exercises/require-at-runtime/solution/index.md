---
title: 'Solution: Заредете по време на изпълнение'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. `require` зарежда модула по време на изпълнение, а не по време на компилация. Сам по себе си той не импортира нищо. Затова Raku не познава името `hello`.

1. Списъкът `<&hello>` казва на `require` да импортира това едно име. След този оператор можете да извикате `hello('Sam')` директно. Тя дава `Hello, Sam!`.

1. Ето *защо* имаме `require`. Той работи по време на изпълнение. Затова може да бъде вътре в `if`. С `--quiet` програмата прескача този клон. Така тя никога не зарежда модула. `use` винаги зарежда модула. Той работи по време на компилация.

{% include nav.html %}
