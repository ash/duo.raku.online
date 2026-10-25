---
title: Тест — Масив `@*ARGS`
---

{% include menu.html %}

Стартирате тази програма няколко пъти. Намерете правилните отговори за всяко изпълнение.

Програмата е във файла `t.raku`. Ето нейния код:

```raku
say @*ARGS.elems;
say @*ARGS[0];
```

## 1

Стартирате програмата така:

```console
$ raku t.raku hello world
```

Какво отпечатва всеки ред код?

{:.quiz-select}
2 | `say @*ARGS.elems;` отпечатва&nbsp; (: 1, 2 :)
hello | `say @*ARGS[0];` отпечатва&nbsp; (: hello, world, hello world :)

## 2

Стартирате програмата така:

```console
$ raku t.raku "hello world"
```

Какво отпечатва програмата?

{:.quiz-select}
1 | `say @*ARGS.elems;` отпечатва&nbsp; (: 1, 2 :) | Цитираният низ е един аргумент.
hello world | `say @*ARGS[0];` отпечатва&nbsp; (: hello, &quot;hello&quot;, world, &quot;world&quot;, hello world, &quot;hello world&quot; :)

## 3

Стартирате програмата така:

```console
$ raku t.raku "hello" "world"
```

Какво отпечатва?

{:.quiz-select}
2 | `say @*ARGS.elems;` отпечатва&nbsp; (: 1, 2 :)
hello | `say @*ARGS[0];` отпечатва&nbsp; (: hello, &quot;hello&quot;, world, &quot;world&quot;, hello world, &quot;hello world&quot; :) | Цитатите от шел-а не са включени в стойността на аргумента.

{% include quiz.html %}

{% include nav.html %}
