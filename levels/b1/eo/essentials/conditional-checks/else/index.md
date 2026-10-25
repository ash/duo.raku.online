---
title: '`else` blokoj'
---

{% include menu.html %}

`if` bloko povas havi `else` blokon post si. Raku rulas la `else` blokon, kiam la kondiĉo ne estas plenumita.

```raku
my $t = 36.6;
if 35.5 < $t < 37.5 {
    say 'Vi fartas bone.';
}
else {
    say 'Voku kuraciston, eble?';
}
```

Vi ne povas uzi la `else` blokon sola. Por tio ekzistas pli bona elekto, kiu nomiĝas [`unless`](../unless). Ni rigardos ĝin post minuto.

{% include nav.html %}
