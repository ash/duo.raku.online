---
title: q, qq, and Q
---

{% include menu.html %}

There are three base quoting operators. They change the text inside them in different amounts:

* `q` — like single quotes: almost all text stays as it is
* `qq` — like double quotes: Raku interpolates variables and escapes
* `Q` — the most literal one: Raku changes **nothing**

Each of them takes the text between two delimiters. Delimiters are the characters around the text. You already know `'…'`. It is a short form of `q`. And `"…"` is a short form of `qq`:

```raku
my $name = 'Anna';

say q{Hello $name};  # Hello $name
say qq{Hello $name}; # Hello Anna
```

`q` does not change `$name`. `qq` interpolates it. Backslash escapes like `\n` work in the same way. Only `qq` and `"…"` turn `\n` into a real newline. Both `q` and `Q` keep it as two characters: `\` and `n`:

```raku
say qq{line\nbreak}; # line<newline>break
say q{line\nbreak};  # line\nbreak
say Q{line\nbreak};  # line\nbreak
```

So what is the difference between `q` and `Q`? `q` is like single quotes. It still handles a *small* set of escapes. A double backslash `\\` becomes one backslash. You can also escape the closing delimiter with a backslash. But the plain `Q` form changes **nothing** at all:

```raku
say q{a\\b}; # a\b   — q collapses the escaped backslash
say Q{a\\b}; # a\\b  — Q keeps both characters
```

You can use any delimiters: `q{…}`, `q[…]`, `q/…/`, `q!…!`. This helps when the text itself has quotes in it. These three operators are the base. The next topic shows [_adverbs_](/advanced/quoting/adverbs). With them, you choose exactly which features are on.

{% include nav.html %}
