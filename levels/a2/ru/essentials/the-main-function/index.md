---
title: Функция `MAIN`
---

{% include menu.html %}

Программе на Raku не нужен никакой особый код в начале. Поэтому вы можете сразу начать с полезного кода. Этот код не находится ни в каком [блоке кода](/ru/essentials/code-blocks). Например, он не находится внутри [функции](/ru/essentials/functions). Эту часть программы мы называем _mainline_.

В программе может быть функция со специальным именем `MAIN`. В этом случае Raku сначала всё компилирует. Потом он выполняет код mainline. После этого он выполняет функцию `MAIN`.

```raku
say '1. Mainline code';

sub MAIN {
    say '3. MAIN called';
}

say '2. Also mainline';
```

Сначала эта программа выполняет `say` на верхнем уровне. Затем она вызывает `MAIN`:

```console
$ raku t.raku
1. Mainline code
2. Also mainline
3. MAIN called
```

Конечно, в программе может быть и только функция `MAIN`. Тогда в ней нет другого кода mainline.

{% include nav.html %}
