---
title: Maldiligento kaj fervoro
translations_gpt:
---

{% include menu.html %}

Iuj listoj en Raku estas komputataj nur, kiam iliaj elementoj estas bezonataj. Tiaj listoj estas _maldiligentaj_ (lazy). La prefiksoj `lazy` kaj `eager` ebligas al vi regi tion rekte.

La prefikso `eager` igas Raku produkti liston **tutan samtempe**, tuj:

```raku
my @squares = eager (1..3).map(* ** 2);
say @squares; # [1 4 9]
```

Sen `eager`, la `map` tamen produktus la valorojn. Sed `eager` certigas, ke ili ĉiuj estas komputataj tuj, ne poste laŭbezone.

La prefikso `lazy` faras la malon. Ĝi markas liston kiel maldiligenta. Tiam ĝiaj elementoj estas produktataj nur, kiam la kodo petas ilin. Tio ebligas al listo esti senfina, almenaŭ teorie:

```raku
my $numbers = lazy (1 .. Inf);
say $numbers.is-lazy; # True
```

La metodo `.is-lazy` konfirmas tion. La listo ne provos komputi ĉiujn siajn senfinajn elementojn antaŭe.

En ĉi tiu ekzemplo tamen Raku ĉiuokaze farus la liston maldiligenta. Intervalo sen fino, kiel `1 .. Inf`, jam estas maldiligenta. Do `say (1 .. Inf).is-lazy` presas `True` sen la prefikso. Skribi `lazy` ĉi tie ŝanĝas nenion. Ĝi nur montras klare vian intencon. La prefikso estas vere utila por listo, kiun Raku alie komputus avide. Per `lazy`, vi povas fari tian liston maldiligenta.

Plej ofte Raku mem faras bonan elekton. Intervaloj kaj sekvencoj estas maldiligentaj, kaj normala atribuo al tabelo estas avida. Uzu ĉi tiujn prefiksojn, kiam vi bezonas ŝanĝi tiun elekton. Uzu `eager`, por ke multekosta komputado okazu nun. Uzu `lazy` por prokrasti komputadon, kiu povus esti granda aŭ ne havi finon.

{% include nav.html %}
