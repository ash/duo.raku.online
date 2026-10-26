---
title: q, qq, et Q
---

{% include menu.html %}

Tres operatores citandi fundamentales sunt. Differentia est quantum textum intra se tractent:

* `q` — sicut apostrophi simplices: fere omnia ut sunt manent
* `qq` — sicut apostrophi duplices: variabiles et effugia interpolantur
* `Q` — maxime ad litteram omnium: **nihil** tractatur

Quisque eorum textum inter par delimitatorum accipit. Notum `'…'` est solum modus brevis scribendi `q`. Eodem modo `"…"` est forma brevis pro `qq`:

```raku
my $name = 'Anna';

say q{Hello $name};  # Hello $name
say qq{Hello $name}; # Hello Anna
```

`q` relinquit `$name` ut est, sed `qq` eam interpolat. Effugia per obliquum reversum ut `\n` eodem modo operantur. Solum `qq` (et `"…"`) convertit `\n` in verum finem lineae. Tam `q` quam `Q` id ut duos characteres relinquunt, `\` et `n`:

```raku
say qq{line\nbreak}; # line<newline>break
say q{line\nbreak};  # line\nbreak
say Q{line\nbreak};  # line\nbreak
```

Quomodo ergo `q` et `Q` differunt? Sicut apostrophi simplices, `q` adhuc *parvum* numerum effugiorum tractat. Obliquus reversus duplicatus `\\` fit unus, et delimitatorem claudentem effugere potes. Forma simplex `Q` autem **nihil** omnino tractat:

```raku
say q{a\\b}; # a\b   — q collapses the escaped backslash
say Q{a\\b}; # a\\b  — Q keeps both characters
```

Quoslibet delimitatores adhibere potes, ut `q{…}`, `q[…]`, `q/…/` vel `q!…!`. Hoc utile est cum textus ipse apostrophos continet. Tres operatores fundamentum sunt. Proximum thema ostendit quomodo [_adverbia_](/la/advanced/quoting/adverbs) tibi permittant exacte eligere quae proprietates accensae sint.

{% include nav.html %}
