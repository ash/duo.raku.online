---
title: Module introspection
---

{% include menu.html %}

The name of a module also creates a _package_. A package is a namespace. It keeps the names from the module. Earlier, in [the section about containers](/advanced/containers), you saw `WHO`. It returns the `Stash` of a package. The `Stash` is the table of symbols, or names, in the package. Module introspection uses this. With it, a program looks inside a module.

The examples below use the `Greeting` module from the earlier topics. It has a subroutine that it exports. It also has a shared `our` variable:

```raku
unit module Greeting;

our $version = '1.0';

sub hello($name) is export {
    return "Hello, $name!";
}
```

To get the package of a module, write `::` after its name. Then add `.keys`. It lists the names in the package:

```raku
use Greeting;

say Greeting::.keys.sort; # ($version EXPORT)
```

The `Greeting` module from the earlier topics has an `our` variable, `$version`. So its package has this name. The name includes the sigil. Next to it, you see `EXPORT`. This may be a surprise. `EXPORT` is a package too. Raku makes it automatically. The module marks some things with `is export`. `EXPORT` keeps all of them, for example, the subroutine `hello`. So an exported name is _not_ directly in the package. It is in `EXPORT`. This is a smaller package inside the package of the module. The keys do not come in a fixed order. So the example sorts them. Then the result is always the same.

You can also find a name in the package. Use the name as a key. You get the same value as with the full name `$Greeting::version`:

```raku
use Greeting;

say Greeting::{'$version'}; # 1.0
```

## Listing the exports of a module

The exported names are really in the `EXPORT` package from above. So you can list them. Just look one level deeper. Exports without a tag go into the group `DEFAULT`. You can read about tags in [Export tags](/advanced/modules-basics/export-tags). The `.keys` of `DEFAULT` are the exported routines:

```raku
use Greeting;

say Greeting::EXPORT::DEFAULT::.keys.sort; # (&hello)
```

Each key is an exported name with its sigil. Here, there is only one key: the subroutine `&hello`. The `&` sigil shows that it is a routine. So you can find out what a module gives to its users. You do not need to read its source code. Just ask its package `EXPORT::DEFAULT` what it has.

Looking inside a package like this is useful. You can find out what a module has. You can also get to its names while the program runs. Then you do not have to write each name in the code.

{% include nav.html %}
