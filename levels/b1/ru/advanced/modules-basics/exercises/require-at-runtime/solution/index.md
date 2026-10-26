---
title: 'Решение: Загрузка во время выполнения'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. `require` загружает модуль во время выполнения, а не во время компиляции. Сам по себе он ничего не импортирует. Поэтому Raku не узнал бы просто `hello`.

1. Список `<&hello>` говорит `require`, что нужно импортировать этот один символ. Поэтому после этой инструкции можно вызвать `hello('Sam')` напрямую, и вызов даёт `Hello, Sam!`.

1. Именно *для этого* и нужен `require`. Так как он работает во время выполнения, он может стоять внутри `if`. Если вы передаёте `--quiet`, эта ветка пропускается и модуль вообще не загружается. `use` во время компиляции не смог бы избежать загрузки.

{% include nav.html %}
