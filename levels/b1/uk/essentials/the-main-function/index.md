---
title: Функція `MAIN`
---

{% include menu.html %}

Програмі на Raku не потрібен стандартний код, який треба писати щоразу. Тому ви можете одразу почати писати корисні інструкції. Ця частина програми знаходиться поза всіма [блоками коду](/uk/essentials/code-blocks), наприклад поза [функціями](/uk/essentials/functions). Вона називається _mainline_.

Якщо в програмі є функція зі спеціальною назвою `MAIN`, Raku виконує її останньою. Це відбувається після того, як Raku скомпілює весь код і виконає код mainline.

```raku
say '1. Mainline code';

sub MAIN {
    say '3. MAIN called';
}

say '2. Also mainline';
```

Ця програма спочатку виконує `say` на верхньому рівні, а потім викликає `MAIN`:

```console
$ raku t.raku
1. Mainline code
2. Also mainline
3. MAIN called
```

Звичайно, програма також може мати функцію `MAIN` і не мати іншого коду mainline.

{% include nav.html %}
