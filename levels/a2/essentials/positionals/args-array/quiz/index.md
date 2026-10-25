---
title: Quiz — The @*ARGS array
---

{% include menu.html %}

You run this program a few times. Find the right answers for each run.

The program is in the file `t.raku`. Here is its code:

```raku
say @*ARGS.elems;
say @*ARGS[0];
```

## 1

You run the program like this:

```console
$ raku t.raku hello world
```

What does each line of code print?

{:.quiz-select}
2 | `say @*ARGS.elems;` prints&nbsp; (: 1, 2 :)
hello | `say @*ARGS[0];` prints&nbsp; (: hello, world, hello world :)

## 2

You run the program like this:

```console
$ raku t.raku "hello world"
```

What does the program print?

{:.quiz-select}
1 | `say @*ARGS.elems;` prints&nbsp; (: 1, 2 :) | The quoted string is a single argument.
hello world | `say @*ARGS[0];` prints&nbsp; (: hello, &quot;hello&quot;, world, &quot;world&quot;, hello world, &quot;hello world&quot; :)

## 3

You run the program like this:

```console
$ raku t.raku "hello" "world"
```

What does it print?

{:.quiz-select}
2 | `say @*ARGS.elems;` prints&nbsp; (: 1, 2 :)
hello | `say @*ARGS[0];` prints&nbsp; (: hello, &quot;hello&quot;, world, &quot;world&quot;, hello world, &quot;hello world&quot; :) | The quotes from the shell are not included in the value of the argument.

{% include quiz.html %}

{% include nav.html %}
