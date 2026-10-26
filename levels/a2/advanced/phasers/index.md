---
title: Phasers
---

{% include menu.html %}

A _phaser_ is a special block. It runs by itself at a certain moment in the life of a program. It does not run at its place in the code. You do not call a phaser. You only say _when_ its code must run. The name of the block tells this.

The most common phasers are about the stages of the whole program:

* `BEGIN` runs as early as possible. At this time, Raku still compiles the program.
* `INIT` runs once when the program starts. It runs before the main code.
* `END` runs once at the very end. It runs after the main code is finished.

This program has these phasers between normal statements. Look at the output. It does not follow the order of the lines in the file:

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

`BEGIN` runs first, during compilation. Then the program runs. `INIT` runs before the main body. Next, the main body prints its line. `END` runs last. Its place in the file does not matter.

People often use `END` to print a summary. They also use it to clean something up. This happens just before the program stops. `BEGIN` is useful for work that must happen before everything else.

{% include nav.html %}
