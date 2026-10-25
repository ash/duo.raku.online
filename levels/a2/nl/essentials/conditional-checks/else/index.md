---
title: '`else` blokken'
---

{% include menu.html %}

Na een `if`-blok kun je een `else`-blok toevoegen. Raku voert het `else`-blok uit als de conditie `False` is.

```raku
my $t = 36.6;
if 35.5 < $t < 37.5 {
    say 'Je bent in orde.';
}
else {
    say 'Misschien een dokter bellen?';
}
```

Je kunt een `else`-blok niet alleen gebruiken. Daarvoor is er een betere manier: [`unless`](../unless). We bekijken die heel binnenkort.

{% include nav.html %}
