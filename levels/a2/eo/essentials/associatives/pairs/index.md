---
title: Paroj
---

{% include menu.html %}

Paro estas datumstrukturo. Ĝi tenas nomon kaj valoron. Kune ili faras unu tutan objekton. Vi povas teni ĉi tiun objekton en skalara variablo. Jen kiel vi kreas paron:

```raku
my $pair = name => 'Anna';
```

La variablo `$pair` havas la tipon `Pair`:

```raku
say $pair.WHAT; # (Pair)
```

Vi povas preni la nomon kaj la valoron aparte. La metodo `key` donas la nomon. La metodo `value` donas la valoron:

```raku
say $pair.key; # name
say $pair.value; # Anna
```

Paroj havas gravan econ. Ili estas neŝanĝeblaj. Tio signifas, ke vi ne povas doni al paro novan valoron. Vi ankaŭ ne povas doni al ĝi novan nomon. Kompreneble, vi povas asigni tute novan paron al la sama variablo:

```raku
my $pair = name => 'Anna';
$pair = name => 'John';
say $pair.value; # John
```

## Subskribo

Estas ankoraŭ unu maniero legi la valoron de paro. Vi povas subskribi la paron. Metu la nomon de ĝia ŝlosilo en angulajn krampojn. Jen kiel:

```raku
say $pair<name>;
```

Notu, ke ŝlosilo sen spacoj ne bezonas citilojn. Se la ŝlosilo havas spacojn, la reguloj estas iom pli striktaj:

```raku
my $pair = 'employee name' => 'Julie Madelon';
say $pair{'employee name'};
```

Notu, ke ĉi-foje la kodo uzas kurbajn krampojn.

{% include nav.html %}
