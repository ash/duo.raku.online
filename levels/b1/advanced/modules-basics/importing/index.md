---
title: Importing
---

{% include menu.html %}

You can bring a module into a program in more than one way. The three statements `use`, `need` and `require` differ in _when_ they load the module. They also differ in _what_ they make available.

## `use`

You have already seen `use`. It loads the module at compile time and imports its exported names. So you can call them directly:

```raku
use Greeting;
say hello('Anna'); # Hello, Anna!
```

## `need`

`need` also loads the module at compile time. But it does _not_ import the exported names. You can still reach its `our` variables through the module name:

```raku
need Greeting;
say $Greeting::version; # 1.0
```

After `need Greeting`, Raku would not recognise a plain `hello(...)`, because nothing was imported. Only the qualified names, such as `$Greeting::version`, are available.

## `require`

`require` loads the module at _run time_ instead of at compile time. This is useful when you only know at run time whether you need a module. For example, its name may come from user input.

Because the module is loaded at run time, nothing is imported automatically. To import symbols, list them in angle brackets after the name of the module. Then you can call them directly:

```raku
require Greeting <&hello>;
say hello('Anna'); # Hello, Anna!
```

In everyday code, `use` is what you want. `need` and `require` are there for less common cases.

{% include nav.html %}
