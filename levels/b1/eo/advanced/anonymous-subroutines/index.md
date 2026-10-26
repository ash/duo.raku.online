---
title: Anonimaj subrutinaj
translations_gpt:
---

{% include menu.html %}

Subrutino ne devas havi nomon. La _anonima_ subrutino aspektas same kiel ordinara, nur sen nomo. Ĝi kutime estas konservata en variablo, por ke vi povu voki ĝin poste.

```raku
my $double = sub ($x) {
    $x * 2
};

say $double(5); # 10
```

La variablo `$double` enhavas la subrutinon. Tiam `$double(5)` vokas ĝin kun la argumento `5`.

## Pintaj blokoj

Raku havas pli mallongan manieron skribi la samon: la _pinta bloko_. La sago `->` venas antaŭ la parametroj. Vi bezonas nek la vorton `sub`, nek krampojn ĉirkaŭ ili:

```raku
my $double = -> $x {
    $x * 2
};

say $double(5); # 10
```

Plej ofte oni skribas malgrandan anoniman subrutinon tiel.

## La sigelo `&`

Eble vi volas voki la subrutinon per nomo, ne per `$`-variablo. En tiu kazo, deklaru la variablon kun la sigelo `&`. Tiam vi povas voki ĝin sen la sigelo, same kiel ordinaran subrutinon:

```raku
my &triple = -> $x {
    $x * 3
};

say triple(4); # 12
```

## Transdoni ĝin al alia funkcio

Vi tute ne devas konservi anoniman subrutinon en variablo. Ĝi estas nur valoro. Do vi povas transdoni ĝin rekte al funkcio, kiu bezonas tian. Ekzemploj estas `map`, `grep` aŭ `sort`:

```raku
say (1, 2, 3).map(-> $x { $x * 2 }); # (2 4 6)
```

Ĉi tie, la pinta bloko estas la anonima subrutino. `map` vokas ĝin unufoje por ĉiu elemento. Fakte, vi faras tion jam de la komenco. Vi transdonis multajn `{ ... }`-blokojn kaj `-> $x { ... }` al `map` kaj `grep`. Ĉiu el ili estas malgranda anonima subrutino. Vi skribas ĝin ĝuste tie, kie vi bezonas ĝin, anstataŭ unue doni al ĝi nomon.

{% include nav.html %}
