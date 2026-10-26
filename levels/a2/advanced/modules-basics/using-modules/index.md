---
title: Using modules
---

{% include menu.html %}

To use a module, load it with the statement `use`. After that, you can use the names that the module exports. It is as if you wrote them yourself.

Take the file `Greeting.rakumod` from the previous topic. A program uses it like this:

```raku
use Greeting;

say hello('Anna');
```

`hello` has the mark `is export`. So the statement `use` makes it available. The program calls it directly:

```
Hello, Anna!
```

Raku must find the module. So the module must be on the module search path. This is the list of places where Raku looks for modules. Maybe the module file is in the same directory as your program. Then tell Raku to look there with the option `-I.`. The dot means “the current directory”:

```console
$ raku -I. program.raku
Hello, Anna!
```

Raku finds installed modules automatically. You learn about them later, in [Installing modules from the web](/advanced/installing-modules). So you need `-I` only for modules next to your program.

{% include nav.html %}
