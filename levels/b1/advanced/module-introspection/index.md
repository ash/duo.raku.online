---
title: Module introspection
---

{% include menu.html %}

The name of a module creates a _package_. A package is a namespace that holds the names defined in the module. Earlier, in [the section about containers](/advanced/containers), you met `WHO`. It returns the `Stash`, or symbol table, of a package. Module introspection makes use of that.

The examples below use the `Greeting` module that we built in the earlier topics. It has an exported subroutine and a shared `our` variable:

```raku
unit module Greeting;

our $version = '1.0';

sub hello($name) is export {
    return "Hello, $name!";
}
```

You write the package of a module with `::` at the end. Adding `.keys` lists the names that it contains:

```raku
use Greeting;

say Greeting::.keys.sort; # ($version EXPORT)
```

The `Greeting` module from the earlier topics defines an `our` variable, `$version`. So its package contains this name, together with its sigil. Next to it is `EXPORT`, which may look surprising. It is a package that Raku creates automatically. It holds everything that a module marks with `is export`, such as the subroutine `hello`. So an exported name does _not_ appear directly in the package. It lives inside the `EXPORT` sub-package. The keys come back in no fixed order. That is why the example sorts them, so that the result is always the same.

You can also look up a name in the package. Just use the name as a key. This gives the same value as the qualified name `$Greeting::version`:

```raku
use Greeting;

say Greeting::{'$version'}; # 1.0
```

## Listing what a module exports

The exported names actually live in the `EXPORT` package that you saw above. So you can list them by looking one level deeper. Exports without a tag go into the `DEFAULT` group (see [Export tags](/advanced/modules-basics/export-tags)). The `.keys` of this group are the exported routines:

```raku
use Greeting;

say Greeting::EXPORT::DEFAULT::.keys.sort; # (&hello)
```

Each key is an exported name with its sigil. Here, it is the only subroutine, `&hello`, with the `&` that marks a routine. In this way, you can find out what a module offers its users. You do not need to read its source code. Just ask its `EXPORT::DEFAULT` package what it holds.

Looking inside a package like this is useful in two cases. You may want to find out what a module provides. Or you may want to reach its names while the program runs. Then you do not have to write out each one in the source code.

{% include nav.html %}
