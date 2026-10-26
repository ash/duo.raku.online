---
title: Export tags
---

{% include menu.html %}

Marking a subroutine `is export` puts it in the module’s _default_ export group. These are the names that a plain `use` brings in. You can also give `is export` a _tag_. Tags sort the exports into named groups. Then each program can choose the group it wants.

A tag is written in parentheses after `is export`:

```raku
unit module Greeting;

sub hello($name)   is export            { "Hello, $name!" }
sub goodbye($name) is export(:partings) { "Goodbye, $name!" }
```

`hello` has no tag, so it belongs to the default group. `goodbye` has the tag `:partings`.

A plain `use` imports the default group only:

```raku
use Greeting;      # hello is available; goodbye is not
```

If you name a tag, `use` imports that group instead. Perhaps surprisingly, it does _not_ import the default group as well:

```raku
use Greeting :partings; # goodbye is available; hello is not
```

When you ask for `:partings`, you get exactly that group. To import everything that a module exports, use the built-in `:ALL` tag:

```raku
use Greeting :ALL; # both hello and goodbye
```

There are two special tags that are useful to know. Every module supports `:ALL`, which imports all of its exports. You can put `:MANDATORY` on a routine that must always be imported. It does not matter which tag the caller chooses.

Each tag is actually a package inside the module’s `EXPORT` package, for example `Greeting::EXPORT::partings`. This is exactly what [module introspection](/advanced/module-introspection) lists. With tags, a larger module can keep its default set of exports small. It can still offer extra features when a program asks for them.

{% include nav.html %}
