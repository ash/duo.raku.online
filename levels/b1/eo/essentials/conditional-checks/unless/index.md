---
title: 'Uzante `unless`'
---

{% include menu.html %}

Per la [`!` operatoro](/eo/essentials/booleans/operations#negation), vi povas facile ŝanĝi ĉiun Boolean kondiĉon al ĝia malo. Sed kelkfoje la plia `!` faras la esprimon pli peza kaj malpli facile legebla. En tiaj kazoj, `unless` povas esti via amiko.

Raku rulas la `unless` blokon, kiam ĝia kondiĉo estas `False`.

```raku
my $broken = False;

# ...Io povas agordi $broken al True ĉi tie...
    
unless $broken {
    say "Ne zorgu!";
    say "Estu feliĉa!";
}
```

Komparu du versiojn de la sama programo:

Kun `if` kaj neado:

```raku
if !$broken { . . . }
```

Kun `unless`:

```raku
unless $broken { . . . }
```

Vi havas ambaŭ eblojn, do vi ĉiam povas elekti tion, kio ŝajnas pli bona en ĉiu situacio.

Notu, ke vi ne povas meti `else` aŭ `elsif` blokon post `unless`. Se vi bezonas tian blokon, la sola maniero estas uzi `if`.

{% include nav.html %}
