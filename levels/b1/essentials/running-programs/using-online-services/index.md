---
title: Using online services to run Raku
---

{% include menu.html %}

Online services do not need much explanation. Paste the program text into an online editor and press the `Run` button. You will see the output of the program in a separate area. If there are any errors, you will see them too.

These services often have a separate text area. From there, they can send data to your program’s input stream, STDIN. Sometimes, the output is also split into `STDOUT` and `STDERR`.

## The built-in Raku Playground

This course comes with its own <a href="https://raku.online/play" target="_blank" rel="noopener noreferrer"><strong>Raku Playground</strong></a>. It runs Raku right in your browser. You do not need to install anything or sign up. Type a program, press run, and see the output straight away. It is the quickest way to try the course’s examples while you read. You can also use it for your own experiments.

Keep in mind that the playground has some natural limits. It runs a young compiler that is still in development. Everything happens inside your browser, with no server behind it. Because of that, a few language features may not work yet. Also, anything that reaches the outside world will not work there. This includes reading or writing files, network access, running other programs and installing modules. For those, use a locally installed compiler or one of the services below.

## External links

Here is a list of some other services that support Raku:

* [glot.io](https://glot.io/new/raku)
* [TIO](https://tio.run/#perl6)
* [Repl.it](https://repl.it/new/raku) (you must log in first)
* [Raku Playground](https://fco.github.io/Raku-Playground/) (runs your code on a server)

For more links and comments about different online services, see [the discussion on Reddit](https://www.reddit.com/r/rakulang/comments/kj63dq/glotio_now_supports_raku/ggxow6n/).

{% include nav.html %}
