---
title: 'Uzante `unless`'
---

{% include menu.html %}

La [`!` operatoro](/eo/essentials/booleans/operations#negation) facile ŝanĝas ĉiun Boolean kondiĉon al ĝia malo. Sed kelkfoje ĉi tiu `!` faras la esprimon pli komplika. Tiam estas pli malfacile legi ĝin. En tiaj kazoj, `unless` povas helpi.

La kondiĉo de `unless` devas esti `False`. Tiam Raku rulas la blokon.

```raku
my $broken = False;

# ...Io povas agordi $broken al True ĉi tie...
    
unless $broken {
    say "Ne zorgu!";
    say "Estu feliĉa!";
}
```

Jen du versioj de la sama programo. Komparu ilin:

Kun `if` kaj `!`:

```raku
if !$broken { . . . }
```

Kun `unless`:

```raku
unless $broken { . . . }
```

Do vi havas elekton. En ĉiu situacio, elektu tion, kio ŝajnas pli bona al vi.

Vi ne povas meti `else` aŭ `elsif` blokon post `unless`. Por tio, vi devas uzi `if`.

{% include nav.html %}
