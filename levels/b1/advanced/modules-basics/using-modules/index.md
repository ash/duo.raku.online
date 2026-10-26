---
title: Using modules
---

{% include menu.html %}

To use a module, load it with the `use` statement. After that, the names that the module exports are available. You can use them as if you had written them yourself.

Here is how a program uses the `Greeting.rakumod` file from the previous topic:

```raku
use Greeting;

say hello('Anna');
```

`hello` was marked with `is export`, so the `use` statement makes it available. The program calls it directly:

```
Hello, Anna!
```

Raku can find the module only if it is on the module search path. Your module file may be in the same directory as your program. In that case, tell Raku to look there with the `-I.` option. The dot means “the current directory”:

```console
$ raku -I. program.raku
Hello, Anna!
```

Raku finds installed modules automatically. They are covered later, in [Installing modules from the web](/advanced/installing-modules). So you only need the `-I` option for modules next to your own program.

{% include nav.html %}
