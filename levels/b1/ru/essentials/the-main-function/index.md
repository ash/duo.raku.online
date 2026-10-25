---
title: Функция `MAIN`
---

{% include menu.html %}

Программе на Raku не нужен стандартный код, который надо писать всегда. Поэтому вы можете сразу начать писать полезные инструкции. Эта часть программы находится вне всех [блоков кода](/ru/essentials/code-blocks), включая, например, [функции](/ru/essentials/functions). Она называется _mainline_.

Если в программе есть функция со специальным именем `MAIN`, Raku выполняет её последней. Это происходит после того, как Raku всё скомпилирует и выполнит код mainline.

```raku
say '1. Mainline code';

sub MAIN {
    say '3. MAIN called';
}

say '2. Also mainline';
```

Эта программа сначала выполняет `say` на верхнем уровне, а затем вызывает `MAIN`:

```console
$ raku t.raku
1. Mainline code
2. Also mainline
3. MAIN called
```

Конечно, в программе может быть функция `MAIN` и никакого другого кода mainline.

{% include nav.html %}
