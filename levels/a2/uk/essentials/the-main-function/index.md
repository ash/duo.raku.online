---
title: Функція `MAIN`
---

{% include menu.html %}

Програмі на Raku не потрібен спеціальний код на початку. Тому ви можете одразу почати з корисного коду. Цей код не знаходиться в жодному [блоці коду](/uk/essentials/code-blocks). Наприклад, він не знаходиться у [функції](/uk/essentials/functions). Цю частину програми ми називаємо _mainline_.

Програма може мати функцію зі спеціальною назвою `MAIN`. У такому разі Raku спочатку компілює весь код. Далі він виконує код mainline. Після цього він виконує функцію `MAIN`.

```raku
say '1. Mainline code';

sub MAIN {
    say '3. MAIN called';
}

say '2. Also mainline';
```

Спочатку ця програма виконує `say` на верхньому рівні. Потім вона викликає `MAIN`:

```console
$ raku t.raku
1. Mainline code
2. Also mainline
3. MAIN called
```

Звичайно, програма може мати й лише функцію `MAIN`. Тоді в ній немає іншого коду mainline.

{% include nav.html %}
