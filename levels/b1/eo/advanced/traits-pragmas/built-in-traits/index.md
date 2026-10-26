---
title: Enkonstruitaj trajtoj
translations_gpt:
---

{% include menu.html %}

_Trajto_ estas aldonata per la ŝlosilvorto `is` tuj post deklaro. Ĝi ruliĝas dum kompilado. Ĝi ŝanĝas fiksitan econ de la aĵo, al kiu ĝi apartenas. Raku venas kun multaj trajtoj, kaj vi jam uzis kelkajn.

Defaŭlte, la parametroj de subrutino estas **nur-legeblaj**. Vi ne povas atribui al ili ene de la rutino. La trajto `is copy` donas al vi privatan kopion de la argumento, kiun vi povas ŝanĝi. La ŝanĝo ne influas la vokanton:

```raku
sub greet($name is copy) {
    $name = "dear $name";
    say "Hello, $name!";
}

my $who = 'Anna';
greet($who); # Hello, dear Anna!
say $who;    # Anna — la propra variablo de la vokanto restas netuŝita
```

La trajto `is rw` iras plu. Ĝi ligas la parametron al la variablo de la vokanto. Do ŝanĝo ene de la rutino videblas ankaŭ ekstere:

```raku
sub bump($n is rw) {
    $n++;
}

my $x = 10;
bump($x);
say $x; # 11
```

Sen unu el ĉi tiuj trajtoj, `$n++` kaŭzus eraron. La parametro estus nur-legebla.

Alia ofta trajto starigas defaŭltan valoron:

```raku
my $port is default(8080);
say $port; # 8080
```

Ĉi tie, `is default` donas al la variablo valoron por uzi, kiam ne estas alia valoro. Ekzistas multaj enkonstruitaj trajtoj, ekzemple `is rw`, `is copy` kaj `is default`. Ĉiu el ili aldonas unu specifan konduton al deklaro dum kompilado. La sekva temo montras, ke la aro de trajtoj ne estas fermita. [Vi povas difini viajn proprajn](/eo/advanced/traits-pragmas/writing-a-trait).

{% include nav.html %}
