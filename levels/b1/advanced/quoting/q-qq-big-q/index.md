---
title: q, qq, and Q
---

{% include menu.html %}

There are three base quoting operators. The difference is how much they process the text inside them:

* `q` — like single quotes: almost everything stays as it is
* `qq` — like double quotes: variables and escapes are interpolated
* `Q` — the most literal of all: **nothing** is processed

Each of them takes the text between a pair of delimiters. The well-known `'…'` is just a short way to write `q`. In the same way, `"…"` is short for `qq`:

```raku
my $name = 'Anna';

say q{Hello $name};  # Hello $name
say qq{Hello $name}; # Hello Anna
```

`q` leaves `$name` as it is, but `qq` interpolates it. Backslash escapes such as `\n` work in the same way. Only `qq` (and `"…"`) turns `\n` into a real newline. Both `q` and `Q` leave it as two characters, `\` and `n`:

```raku
say qq{line\nbreak}; # line<newline>break
say q{line\nbreak};  # line\nbreak
say Q{line\nbreak};  # line\nbreak
```

So how are `q` and `Q` different? Like single quotes, `q` still handles a *small* set of escapes. A doubled backslash `\\` becomes one, and you can escape the closing delimiter. The plain `Q` form, however, processes **nothing** at all:

```raku
say q{a\\b}; # a\b   — q collapses the escaped backslash
say Q{a\\b}; # a\\b  — Q keeps both characters
```

You can use any delimiters, such as `q{…}`, `q[…]`, `q/…/` or `q!…!`. This is useful when the text itself contains quotes. The three operators are the base. The next topic shows how [_adverbs_](/advanced/quoting/adverbs) let you choose exactly which features are on.

{% include nav.html %}
