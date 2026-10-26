---
title: 'Решение: Загрузка во время выполнения'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

Программа `require-import.raku`:

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

🦋 Оба исходных файла можно найти в каталоге [exercises/advanced/modules-basics/require-at-runtime](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/require-at-runtime).

## Вывод

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Комментарии

1. `require` загружает модуль во время выполнения, а не во время компиляции. Сам по себе он ничего не импортирует. Поэтому Raku не знает имя `hello`.

1. Список `<&hello>` говорит `require` импортировать это одно имя. После этой инструкции можно вызвать `hello('Sam')` напрямую. Вызов даёт `Hello, Sam!`.

1. Вот *зачем* нужен `require`. Он работает во время выполнения. Поэтому он может стоять внутри `if`. С `--quiet` программа пропускает эту ветку. Поэтому она никогда не загружает модуль. А `use` всегда загружает модуль. Он работает во время компиляции.

{% include nav.html %}
