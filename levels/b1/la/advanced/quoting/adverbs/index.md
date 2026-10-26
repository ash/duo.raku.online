---
title: Adverbia quotationis
---

{% include menu.html %}

Modum constructionis citandi _adverbiis_ temperare potes. Quaeque proprietas citandi suum adverbium habet, quod illam unam proprietatem accendit vel exstinguit. Proprietates sunt interpolatio scalarium, executio clausurarum (codicis in uncis), et tractatio obliquorum reversorum. Itaque a `q` vel `Q` incipere potes. Deinde exacte eas proprietates rursus addis quas requiris.

Nonnulla adverbia communia:

* `:s` / `:scalar` — variabiles scalares interpola (`$x`)
* `:c` / `:closure` — codicem in `{ … }` interpola
* `:b` / `:backslash` — effugia per obliquum reversum tracta, ut `\n`

Adde unum adverbium ad `q` ut unam proprietatem accendas. Exempli gratia, codicem in uncis permitte sed nihil aliud:

```raku
say q/result: {3 * 4}/;   # result: {3 * 4}  — plain q leaves the block untouched
say q:c/result: {3 * 4}/; # result: 12        — :c runs the block
```

Cum simplici `q`, `{ 3 * 4 }` exacte ut scriptum est imprimitur. Solum `:c` claustrum exsequitur et valorem eius inserit. `$variable` tamen adhuc ut est maneret. Nota delimitatores `/…/` hic. Etiam `{…}` ut delimitatores adhibere posses, et codex adhuc compilaretur. Compilator uncos inclusos recte numerat. Sed tum interior `{ 3 * 4 }` solum pars textus esset, non clausura. Itaque `:c` eum ut est relinqueret. Ergo si textus claustrum `{ … }` continet, delimitatorem alium quam `{…}` elige. Tum clausura re vera currit. Etiam interpolationem scalarem ad formam `Q` addere potes, quae normaliter nihil mutat:

```raku
my $name = 'Anna';
say Q:s{Hi, $name}; # Hi, Anna
```

Cum `!` adverbia etiam proprietates **exstinguunt**. Sic `qq` adhibes sed `$` ut est servas:

```raku
my $price = 5;
say qq:!s{costs $price dollars}; # costs $price dollars
```

`qq` idem est ac `Q` cum omnibus adverbiis interpolationis accensis. `q` idem est ac `Q` cum minore numero eorum. Inter hos duos fines adverbia tibi permittunt singula omnia regere.

{% include nav.html %}
