---
title: Running from REPL
---

{% include menu.html %}

REPL stands for _Read–eval–print loop_. It is a built-in shell mode. You type instructions, and the screen shows the result of each step. This includes the state of the variables and the output of your program.

To start Rakudo shell, simply type:

```console
$ raku
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2026.06.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2026.06.

You may want to `zef install Readline` or `zef install Linenoise` or use rlwrap for a line editor

To exit type 'exit' or '^D'
> 
```

The output may depend on the version of the compiler that you have. Here, the shell recommends installing some modules for a better user experience. That is why you see this message.

At the end, there is a prompt character, `>`. Here you can type your program or parts of it. The shell compiles it line by line as soon as you press Enter.

    > say 'Hello, World';
    Hello, World
    > 

{% include nav.html %}
