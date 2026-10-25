---
title: 'Solution: Привіт, Світ!'
---

{% include menu.html %}

Ми вже пройшли велику частину курсу. Але ми мусимо повернутися до цієї програми. Чому? Ми щойно вивчили новий спосіб писати програми на Raku.

## Код 1

```raku
sub MAIN() {
    say 'Hello, World!';
}
```

🦋 Знайдіть програму у файлі [hello-world.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/hello-world.raku).

## Код 2

```raku
unit sub MAIN;
say 'Hello, World!';
```

🦋 Знайдіть програму у файлі [hello-world-unit.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/hello-world-unit.raku).

## Приклад

Запустіть одну з двох програм:

```console
$ raku exercises/the-main-function/hello-world.raku
Hello, World!

$ raku exercises/the-main-function/hello-world-unit.raku
Hello, World!
```

{% include nav.html %}
