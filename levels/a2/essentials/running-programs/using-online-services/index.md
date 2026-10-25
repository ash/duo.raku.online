---
title: Using online services to run Raku
---

{% include menu.html %}

There is not much to say about online services. Paste your program into an online editor. Then press the `Run` button. You see the output of the program in a separate area. If there are errors, you see them too.

These services can often send data to your program. The data comes from a separate text area. It goes to the input stream of the program, STDIN. Sometimes, the output also comes in two parts: `STDOUT` and `STDERR`.

## The built-in Raku Playground

This course has its own <a href="https://raku.online/play" target="_blank" rel="noopener noreferrer"><strong>Raku Playground</strong></a>. There, Raku runs right in your browser. You do not need to install anything. You do not need to sign up. Type a program and press run. You see the output at once. It is the fastest way to try code while you read. Try the examples of the course there. Try your own experiments too.

Remember that the playground has some limits. This comes from the way it works. It runs a young compiler. This compiler is still in development. Everything runs inside your browser. There is no server behind it. So some language features may not work yet. Also, the playground cannot reach the outside world. It cannot read or write files or use the network. It cannot run other programs or install modules. For these things, use a compiler on your own computer. Or use one of the services below.

## External links

Here are some other services that run Raku:

* [glot.io](https://glot.io/new/raku)
* [TIO](https://tio.run/#perl6)
* [Repl.it](https://repl.it/new/raku) (log in first)
* [Raku Playground](https://fco.github.io/Raku-Playground/) (runs your code on a server)

You can also read [the discussion on Reddit](https://www.reddit.com/r/rakulang/comments/kj63dq/glotio_now_supports_raku/ggxow6n/). It has more links and comments about different online services.

{% include nav.html %}
