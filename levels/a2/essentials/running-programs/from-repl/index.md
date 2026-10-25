---
title: Running from REPL
---

{% include menu.html %}

REPL is short for _Read–eval–print loop_. It is a built-in shell mode. You type instructions. After each one, you see the result on the screen. You see the state of the variables. You also see the output of your program.

Type this to start the Rakudo shell:

```console
$ raku
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2026.06.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2026.06.

You may want to `zef install Readline` or `zef install Linenoise` or use rlwrap for a line editor

To exit type 'exit' or '^D'
> 
```

The output depends on your version of the compiler. In the output above, the shell suggests installing some modules. With them, the shell is nicer to use. That is why you see this message.

At the end, you see the prompt character `>`. Here you type your program or parts of it. The shell compiles your code line by line. It does this when you press Enter.

    > say 'Hello, World';
    Hello, World
    > 

{% include nav.html %}
