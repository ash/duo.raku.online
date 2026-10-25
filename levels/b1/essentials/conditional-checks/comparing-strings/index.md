---
title: Comparing strings
---

{% include menu.html %}

To compare strings, Raku uses a separate set of operators:

`eq` | Equal
`ne` | Not equal
`gt` | Greater than
`ge` | Greater than or equal
`lt` | Less than
`le` | Less than or equal

## Examples

Look at these examples, which compare two strings:

```raku
say 'alpha' lt 'beta'; # True
say 'word' ne 'Word';  # True
say 'xyz' gt 'xvw';    # True
```

{% include nav.html %}
