---
title: Quiz — The @*ARGS array
---

{% include menu.html %}

You run the following program several times. Find the correct answers for each run.

The program is saved in the file `t.raku`. Here is its code:

```raku
say @*ARGS.elems;
say @*ARGS[0];
```

## 1

The program is run like this:

```console
$ raku t.raku hello world
```

What value does each line of code print?

{:.quiz-select}
2 | `say @*ARGS.elems;` prints&nbsp; (: 1, 2 :)
hello | `say @*ARGS[0];` prints&nbsp; (: hello, world, hello world :)

## 2

The program is run like this:

```console
$ raku t.raku "hello world"
```

What values does it print?

{:.quiz-select}
1 | `say @*ARGS.elems;` prints&nbsp; (: 1, 2 :) | The quoted string is a single argument.
hello world | `say @*ARGS[0];` prints&nbsp; (: hello, &quot;hello&quot;, world, &quot;world&quot;, hello world, &quot;hello world&quot; :)

## 3

The program is run like this:

```console
$ raku t.raku "hello" "world"
```

What does it print?

{:.quiz-select}
2 | `say @*ARGS.elems;` prints&nbsp; (: 1, 2 :)
hello | `say @*ARGS[0];` prints&nbsp; (: hello, &quot;hello&quot;, world, &quot;world&quot;, hello world, &quot;hello world&quot; :) | The quotes from the shell are not included in the value of the argument.

{% include quiz.html %}

{% include nav.html %}
