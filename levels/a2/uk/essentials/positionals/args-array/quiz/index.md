---
title: Тест — Масив `@*ARGS`
---

{% include menu.html %}

Ви запускаєте цю програму кілька разів. Знайдіть правильні відповіді для кожного запуску.

Програма лежить у файлі `t.raku`. Ось її код:

```raku
say @*ARGS.elems;
say @*ARGS[0];
```

## 1

Ви запускаєте програму так:

```console
$ raku t.raku hello world
```

Що виводить кожен рядок коду?

{:.quiz-select}
2 | `say @*ARGS.elems;` виводить&nbsp; (: 1, 2 :)
hello | `say @*ARGS[0];` виводить&nbsp; (: hello, world, hello world :)

## 2

Ви запускаєте програму так:

```console
$ raku t.raku "hello world"
```

Що виводить програма?

{:.quiz-select}
1 | `say @*ARGS.elems;` виводить&nbsp; (: 1, 2 :) | Цитований рядок є одним аргументом.
hello world | `say @*ARGS[0];` виводить&nbsp; (: hello, &quot;hello&quot;, world, &quot;world&quot;, hello world, &quot;hello world&quot; :)

## 3

Ви запускаєте програму так:

```console
$ raku t.raku "hello" "world"
```

Що вона виводить?

{:.quiz-select}
2 | `say @*ARGS.elems;` виводить&nbsp; (: 1, 2 :)
hello | `say @*ARGS[0];` виводить&nbsp; (: hello, &quot;hello&quot;, world, &quot;world&quot;, hello world, &quot;hello world&quot; :) | Лапки з оболонки не включені у значення аргументу.

{% include quiz.html %}

{% include nav.html %}
