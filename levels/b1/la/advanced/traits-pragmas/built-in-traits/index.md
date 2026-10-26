---
title: Proprietates incorporatae
---

{% include menu.html %}

_Trait_ cum verbo clave `is` statim post declarationem additur. Tempore compilationis currit. Proprietatem fixam rei mutat cui adiunctus est. Raku multos traits habet, et iam paucos adhibuisti.

Ex defectu parametra subroutinae sunt **tantum-lectu**. Eis intra routinam assignare non potes. Trait `is copy` tibi copiam privatam argumenti dat, quam mutare potes. Mutatio vocantem non afficit:

```raku
sub greet($name is copy) {
    $name = "dear $name";
    say "Hello, $name!";
}

my $who = 'Anna';
greet($who); # Hello, dear Anna!
say $who;    # Anna — the caller's own variable is untouched
```

Trait `is rw` longius procedit. Parametrum variabili vocantis ligat. Ergo mutatio intra routinam etiam foris visibilis est:

```raku
sub bump($n is rw) {
    $n++;
}

my $x = 10;
bump($x);
say $x; # 11
```

Sine uno ex his traits, `$n++` errorem faceret. Parametrum tantum-lectu esset.

Alius trait communis valorem defectivum statuit:

```raku
my $port is default(8080);
say $port; # 8080
```

Hic `is default` variabili valorem dat quem adhibet cum nullus alius valor adest. Multi traits incorporati sunt, ut `is rw`, `is copy` et `is default`. Quisque eorum unum modum agendi certum declarationi addit, tempore compilationis. Thema proximum ostendit traits non esse coetum clausum. [Tuos proprios definire potes](/la/advanced/traits-pragmas/writing-a-trait).

{% include nav.html %}
