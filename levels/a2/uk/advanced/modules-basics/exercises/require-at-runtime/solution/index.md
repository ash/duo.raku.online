---
title: 'Розв''язання: Завантаження під час виконання'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

Програма `require-import.raku`:

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

🦋 Обидва файли з вихідним кодом можна знайти в каталозі [exercises/advanced/modules-basics/require-at-runtime](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/require-at-runtime).

## Вивід

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Коментарі

1. `require` завантажує модуль під час виконання, а не під час компіляції. Сам по собі він нічого не імпортує. Тож Raku не знає імені `hello`.

1. Список `<&hello>` каже `require` імпортувати це одне ім'я. Після цього оператора можна викликати `hello('Sam')` напряму. Виклик дає `Hello, Sam!`.

1. Ось *навіщо* нам `require`. Він працює під час виконання. Тож він може стояти всередині `if`. З `--quiet` програма пропускає цю гілку. Тож вона ніколи не завантажує модуль. А `use` завжди завантажує модуль. Він працює під час компіляції.

{% include nav.html %}
