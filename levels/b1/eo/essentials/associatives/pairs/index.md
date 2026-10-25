---
title: Paroj
---

{% include menu.html %}

Paro estas datumstrukturo, kiu tenas nomon kaj valoron kune. Ili faras unu solan objekton, kiun vi povas konservi en skalara variablo. Jen kiel vi kreas paron:

```raku
my $pair = name => 'Anna';
```

La tipo de la variablo `$pair` estas `Pair`:

```raku
say $pair.WHAT; # (Pair)
```

Vi povas preni la nomon kaj la valoron aparte per la metodoj `key` kaj `value`:

```raku
say $pair.key; # name
say $pair.value; # Anna
```

Grava eco de paroj estas, ke ili estas neŝanĝeblaj. Tio signifas, ke vi ne povas doni al ekzistanta paro novan valoron aŭ novan nomon. Sed kompreneble vi povas asigni tute novan paron al la sama variablo:

```raku
my $pair = name => 'Anna';
$pair = name => 'John';
say $pair.value; # John
```

## Subskribo

Estas alia maniero legi la valoron de paro. Vi povas subskribi ĝin per la nomo de ĝia ŝlosilo inter angulaj krampoj. Jen kiel:

```raku
say $pair<name>;
```

Notu, ke vi ne bezonas citilojn ĉirkaŭ la ŝlosilo, se ĝi ne havas spacojn. Se ĝi havas spacojn, la reguloj estas iom pli striktaj:

```raku
my $pair = 'employee name' => 'Julie Madelon';
say $pair{'employee name'};
```

Atentu: ĉi-foje ni uzas kurbajn krampojn.

{% include nav.html %}
