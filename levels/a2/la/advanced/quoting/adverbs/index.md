---
title: Adverbia quotationis
---

{% include menu.html %}

Modum constructionis citandi mutare potes. Ad hoc _adverbia_ adhibes. Constructio citandi plures proprietates habet. Exempli gratia, scalares interpolare potest. Codicem in uncis exsequi potest. Obliquos reversos tractare potest. Quaeque proprietas suum adverbium habet. Adverbium hanc unam proprietatem accendit vel exstinguit. Itaque a `q` vel `Q` incipere potes. Deinde exacte proprietates quas requiris rursus addis.

Ecce aliqua adverbia communia:

* `:s` / `:scalar` — valores variabilium scalarium (`$x`) in seriem pone
* `:c` / `:closure` — codicem in `{ … }` exsequere et eventum in seriem pone
* `:b` / `:backslash` — effugia per obliquum reversum tracta, ut `\n`

Adde unum adverbium ad `q`. Tum `q` unam proprietatem accipit. Exempli gratia, permitte ei codicem exsequi, sed nihil aliud:

```raku
say q/result: {3 * 4}/;   # result: {3 * 4}  — plain q leaves the block untouched
say q:c/result: {3 * 4}/; # result: 12        — :c runs the block
```

Cum simplici `q` Raku `{ 3 * 4 }` ut est imprimit. Solum `:c` claustrum exsequitur. Tum Raku eventum in seriem ponit. `$variable` tamen ut est manet. Specta delimitatores hic: `/…/`. Delimitatores sunt characteres circa textum. Etiam `{…}` ut delimitatores adhibere potes. Nullus error est, quia compilator uncos recte numerat. Sed tum interior `{ 3 * 4 }` solum pars textus est. Codex non est. Itaque `:c` eum non exsequitur, et ut est manet. Habetne textus claustrum `{ … }`? Tum `{…}` ut delimitatores noli adhibere. Alios delimitatores adhibe. Tum codex in uncis currit. Etiam interpolationem scalarem ad `Q` addere potes. Sine ea `Q` totum textum ut est servat:

```raku
my $name = 'Anna';
say Q:s{Hi, $name}; # Hi, Anna
```

Adverbia etiam proprietates **exstinguere** possunt. Ad hoc `!` scribe. Hic `qq` adhibemus, sed `$` character normalis manet:

```raku
my $price = 5;
say qq:!s{costs $price dollars}; # costs $price dollars
```

`qq` idem est ac `Q` cum omnibus adverbiis interpolationis accensis. `q` idem est ac `Q` cum paucioribus adverbiis accensis. Cum adverbiis quamque proprietatem inter hos duos fines eligere potes.

{% include nav.html %}
