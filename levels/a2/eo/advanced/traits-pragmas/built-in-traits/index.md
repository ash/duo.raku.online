---
title: Enkonstruitaj trajtoj
translations_gpt:
---

{% include menu.html %}

Vi aldonas _trajton_ per la ŝlosilvorto `is`, tuj post deklaro. Trajto ruliĝas dum kompilado. Ĝi ŝanĝas fiksitan econ de la aĵo, kiu havas la trajton. Raku havas multajn trajtojn. Vi jam uzis kelkajn el ili.

Normale, la parametroj de subrutino estas **nur-legeblaj**. Vi ne povas atribui novajn valorojn al ili ene de la rutino. La trajto `is copy` donas al vi vian propran kopion de la argumento. Vi povas ŝanĝi ĉi tiun kopion. La ŝanĝo restas ene de la rutino. La variablo de la vokanto restas la sama:

```raku
sub greet($name is copy) {
    $name = "dear $name";
    say "Hello, $name!";
}

my $who = 'Anna';
greet($who); # Hello, dear Anna!
say $who;    # Anna — la propra variablo de la vokanto restas netuŝita
```

La trajto `is rw` iras plu. Ĝi ligas la parametron al la variablo de la vokanto. Vi ŝanĝas la parametron ene de la rutino. Tiam la ŝanĝo videblas ankaŭ ekstere:

```raku
sub bump($n is rw) {
    $n++;
}

my $x = 10;
bump($x);
say $x; # 11
```

Sen unu el ĉi tiuj trajtoj, `$n++` donas eraron. Tio estas, ĉar la parametro estas nur-legebla.

Alia ofta trajto starigas defaŭltan valoron:

```raku
my $port is default(8080);
say $port; # 8080
```

Ĉi tie, `is default` donas al la variablo defaŭltan valoron. La variablo havas ĉi tiun valoron, kiam nenio alia estas en ĝi. Ekzistas multaj enkonstruitaj trajtoj: `is rw`, `is copy`, `is default` kaj pliaj. Ĉiu el ili aldonas unu specialan konduton al deklaro. Tio okazas dum kompilado. La sekva temo montras, ke la listo de trajtoj ne estas fermita. [Vi povas fari viajn proprajn trajtojn](/eo/advanced/traits-pragmas/writing-a-trait).

{% include nav.html %}
