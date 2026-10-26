---
title: Phasers
---

{% include menu.html %}

A _phaser_ is a special block. It runs automatically at a certain moment in the life of a program. It does not run where it appears in the source code. You do not call a phaser. You only say _when_ its code should run, with the name of the block.

The most common phasers mark the stages of the whole program:

* `BEGIN` runs as early as possible, while Raku is still compiling the program;
* `INIT` runs once when the program starts, before the main code;
* `END` runs once at the very end, after the main code has finished.

The next program puts these phasers between ordinary statements. Note that the output does not follow the order of the lines in the file:

```raku
say 'main body';
BEGIN say 'BEGIN';
END say 'END';
INIT say 'INIT';
```

The program prints:

```
BEGIN
INIT
main body
END
```

`BEGIN` runs first, while the program is compiled. Then, when the program runs, `INIT` comes before the main body. The main body prints next. `END` runs last, wherever it is written in the file.

`END` is often used just before the program ends. It can print a summary or clean something up. `BEGIN` is useful for work that must happen before anything else.

{% include nav.html %}
