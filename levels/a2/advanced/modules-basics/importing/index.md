---
title: Importing
---

{% include menu.html %}

There are several ways to bring a module into a program. Raku has three statements for this: `use`, `need`, and `require`. They are different in two ways. The first is _when_ they load the module. The second is _what_ they give to the program.

## `use`

You already know `use`. It loads the module at compile time, before the program runs. It also imports the exported names of the module. So you can call them directly:

```raku
use Greeting;
say hello('Anna'); # Hello, Anna!
```

## `need`

`need` also loads the module at compile time. But it does _not_ import the exported names. You can still get to the `our` variables of the module. Use the name of the module for this:

```raku
need Greeting;
say $Greeting::version; # 1.0
```

After `need Greeting`, a simple `hello(...)` does not work. Nothing was imported. Only the full names are available, with the module name in them. An example is `$Greeting::version`.

## `require`

`require` loads the module at _run time_, not at compile time. This is useful in some cases. Sometimes you do not know if you need a module. You only know it when the program runs. For example, the user may enter the name of the module.

The module loads at run time. So nothing is imported automatically. After the name of the module, write the names that you want. Put them in angle brackets. Then they are imported. So you can call them directly:

```raku
require Greeting <&hello>;
say hello('Anna'); # Hello, Anna!
```

Usually, `use` is the right choice. `need` and `require` are for less common cases.

{% include nav.html %}
