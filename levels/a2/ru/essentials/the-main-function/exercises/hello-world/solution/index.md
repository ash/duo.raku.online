---
title: 'Решение: Привет, Мир!'
---

{% include menu.html %}

Мы уже прошли большой путь по курсу. Но нам нужно вернуться к этой программе. Почему? Мы только что узнали новый способ писать программы на Raku.

## Код 1

```raku
sub MAIN() {
    say 'Hello, World!';
}
```

🦋 Найдите программу в файле [hello-world.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/hello-world.raku).

## Код 2

```raku
unit sub MAIN;
say 'Hello, World!';
```

🦋 Найдите программу в файле [hello-world-unit.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/hello-world-unit.raku).

## Пример

Запустите одну из двух программ:

```console
$ raku exercises/the-main-function/hello-world.raku
Hello, World!

$ raku exercises/the-main-function/hello-world-unit.raku
Hello, World!
```

{% include nav.html %}
