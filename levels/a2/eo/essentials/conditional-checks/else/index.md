---
title: '`else` blokoj'
---

{% include menu.html %}

Post `if` bloko, vi povas aldoni `else` blokon. Raku rulas la `else` blokon, kiam la kondiĉo estas `False`.

```raku
my $t = 36.6;
if 35.5 < $t < 37.5 {
    say 'Vi fartas bone.';
}
else {
    say 'Voku kuraciston, eble?';
}
```

Vi ne povas uzi `else` blokon sola. Por tio ekzistas pli bona maniero: [`unless`](../unless). Ni rigardos ĝin tre baldaŭ.

{% include nav.html %}
