---
title: '`else` blokken'
---

{% include menu.html %}

Na een `if`-blok kan een `else`-blok komen. Raku voert het `else`-blok uit als de conditie niet klopt.

```raku
my $t = 36.6;
if 35.5 < $t < 37.5 {
    say 'Je bent in orde.';
}
else {
    say 'Misschien een dokter bellen?';
}
```

Je kunt het `else`-blok niet op zichzelf gebruiken. Daarvoor is er een betere optie, met de naam [`unless`](../unless). We kijken er zo meteen naar.

{% include nav.html %}
