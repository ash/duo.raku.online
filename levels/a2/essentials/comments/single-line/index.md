---
title: Single-line comments
---

{% include menu.html %}

The simplest comment is a one-line comment. It starts with the `#` character. It goes to the end of the line.

```raku
my $name; # This variable is used to keep user’s name
$name = prompt 'What is your name? ';
say $name; # We see the name now
```

A shebang is a first line like `#!/usr/bin/env raku`. For Raku, it is also a comment. But the shell can read and run it.

{% include nav.html %}
