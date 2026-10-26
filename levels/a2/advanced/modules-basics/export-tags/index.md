---
title: Export tags
---

{% include menu.html %}

Mark a subroutine with `is export`. Then it goes into the _default_ export group of the module. A simple `use` brings in the names from this group. You can also give `is export` a _tag_. With tags, you put the exports into groups with names. Then each program takes the group that it wants.

You write a tag in parentheses after `is export`:

```raku
unit module Greeting;

sub hello($name)   is export            { "Hello, $name!" }
sub goodbye($name) is export(:partings) { "Goodbye, $name!" }
```

`hello` has no tag. So it is in the default group. `goodbye` has the tag `:partings`.

A simple `use` imports only the default group:

```raku
use Greeting;      # hello is available; goodbye is not
```

Now name a tag. Then `use` imports that group instead. This may surprise you. It does _not_ import the default group too:

```raku
use Greeting :partings; # goodbye is available; hello is not
```

With `:partings`, you get exactly this group. Do you want all the exports of a module? Then use the built-in tag `:ALL`:

```raku
use Greeting :ALL; # both hello and goodbye
```

Two special tags are good to know. Every module supports `:ALL`. It imports all the exports of the module. You can put `:MANDATORY` on a routine. Then the routine is always imported. It does not matter which tag the caller chooses.

In fact, each tag is a package. It is inside the `EXPORT` package of the module. An example is `Greeting::EXPORT::partings`. [Module introspection](/advanced/module-introspection) lists exactly these packages. With tags, a large module can keep its default group small. A program can still ask for more features.

{% include nav.html %}
