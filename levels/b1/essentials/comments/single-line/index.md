---
title: Single-line comments
---

{% include menu.html %}

The simplest kind of comment is a one-line comment. It starts with the `#` character. It goes on until the end of the current line.

```raku
my $name; # This variable is used to keep user’s name
$name = prompt 'What is your name? ';
say $name; # We see the name now
```

Look at a shebang such as `#!/usr/bin/env raku` in the first line of code. For Raku, it is also a comment. But the shell can read and execute it.

{% include nav.html %}
