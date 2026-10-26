---
title: Anonimaj subrutinaj
translations_gpt:
---

{% include menu.html %}

Subrutino ne bezonas nomon. Subrutino sen nomo estas _anonima_. Vi skribas ĝin kiel ordinaran subrutinon, nur sen nomo. Kutime vi konservas ĝin en variablo. Tiam vi povas voki ĝin poste.

```raku
my $double = sub ($x) {
    $x * 2
};

say $double(5); # 10
```

La variablo `$double` enhavas la subrutinon. `$double(5)` vokas la subrutinon kun la argumento `5`.

## Pintaj blokoj

Raku havas pli mallongan manieron skribi la samon. Ĝi estas la _pinta bloko_. Ĝi havas sagon, `->`, antaŭ la parametroj. Vi ne bezonas la vorton `sub`. Vi ankaŭ ne bezonas krampojn ĉirkaŭ la parametroj:

```raku
my $double = -> $x {
    $x * 2
};

say $double(5); # 10
```

Tiel oni kutime skribas malgrandan anoniman subrutinon.

## La sigelo `&`

Eble vi volas nomon por la voko, ne `$`-variablon. Tiam kreu la variablon kun la sigelo `&`. Nun vi povas voki ĝin sen la sigelo. Ĝi funkcias same kiel ordinara subrutino:

```raku
my &triple = -> $x {
    $x * 3
};

say triple(4); # 12
```

## Doni ĝin al alia funkcio

Vi ne devas konservi anoniman subrutinon en variablo. Ĝi estas nur valoro. Do vi povas doni ĝin rekte al funkcio. Kelkaj funkcioj bezonas tian valoron, ekzemple `map`, `grep` aŭ `sort`:

```raku
say (1, 2, 3).map(-> $x { $x * 2 }); # (2 4 6)
```

Ĉi tie, la pinta bloko estas la anonima subrutino. `map` vokas ĝin unufoje por ĉiu elemento. Fakte, vi jam faras tion la tutan tempon. Vi ofte donas `{ ... }`-blokon aŭ `-> $x { ... }` al `map` kaj `grep`. Ĉiu el ili estas malgranda anonima subrutino. Vi skribas ĝin ĝuste tie, kie vi bezonas ĝin. Vi ne donas al ĝi nomon unue.

{% include nav.html %}
