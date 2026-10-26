---
title: 'Розв''язання: Завантаження під час виконання'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. `require` завантажує модуль під час виконання, а не під час компіляції. Сам по собі він нічого не імпортує. Саме тому Raku не знав би простого `hello`.

1. Список `<&hello>` каже `require` імпортувати цей один символ. Тож після цього оператора можна викликати `hello('Sam')` напряму, і виклик дає `Hello, Sam!`.

1. Саме *для цього* й потрібен `require`. Оскільки він працює під час виконання, він може стояти всередині `if`. Коли ви задаєте `--quiet`, ця гілка пропускається, і модуль ніколи не завантажується. А `use` під час компіляції не зміг би уникнути завантаження.

{% include nav.html %}
