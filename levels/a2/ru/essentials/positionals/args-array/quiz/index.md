---
title: Тест: Массив `@*ARGS`
---

{% include menu.html %}

Вы запускаете эту программу несколько раз. Найдите правильные ответы для каждого запуска.

Программа находится в файле `t.raku`. Вот её код:

```raku
say @*ARGS.elems;
say @*ARGS[0];
```

## 1

Вы запускаете программу так:

```console
$ raku t.raku hello world
```

Что выводит каждая строка кода?

{:.quiz-select}
2 | `say @*ARGS.elems;` выводит&nbsp; (: 1, 2 :)
hello | `say @*ARGS[0];` выводит&nbsp; (: hello, world, hello world :)

## 2

Вы запускаете программу так:

```console
$ raku t.raku "hello world"
```

Что выводит программа?

{:.quiz-select}
1 | `say @*ARGS.elems;` выводит&nbsp; (: 1, 2 :) | Заключенная в кавычки строка является одним аргументом.
hello world | `say @*ARGS[0];` выводит&nbsp; (: hello, &quot;hello&quot;, world, &quot;world&quot;, hello world, &quot;hello world&quot; :)

## 3

Вы запускаете программу так:

```console
$ raku t.raku "hello" "world"
```

Что она выводит?

{:.quiz-select}
2 | `say @*ARGS.elems;` выводит&nbsp; (: 1, 2 :)
hello | `say @*ARGS[0];` выводит&nbsp; (: hello, &quot;hello&quot;, world, &quot;world&quot;, hello world, &quot;hello world&quot; :) | Кавычки из оболочки не включаются в значение аргумента.

{% include quiz.html %}

{% include nav.html %}
