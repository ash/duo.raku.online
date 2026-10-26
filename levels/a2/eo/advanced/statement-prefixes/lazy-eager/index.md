---
title: Maldiligento kaj fervoro
translations_gpt:
---

{% include menu.html %}

Raku komputas iujn listojn nur, kiam ĝi bezonas iliajn elementojn. Tiaj listoj estas _maldiligentaj_ (lazy). Per la prefiksoj `lazy` kaj `eager`, vi povas mem regi tion.

La prefikso `eager` igas Raku produkti liston **tutan samtempe**, tuj nun:

```raku
my @squares = eager (1..3).map(* ** 2);
say @squares; # [1 4 9]
```

La `map` produktas la valorojn ankaŭ sen `eager`. Sed `eager` certigas, ke Raku komputas ilin ĉiujn tuj. Ĝi ne atendas, ĝis vi bezonas ilin.

La prefikso `lazy` faras la malon. Ĝi markas liston kiel maldiligenta. Tiam Raku produktas ĉiun elementon nur, kiam la kodo petas ĝin. Do listo povas, teorie, ne havi finon:

```raku
my $numbers = lazy (1 .. Inf);
say $numbers.is-lazy; # True
```

La metodo `.is-lazy` montras, ke la listo estas maldiligenta. Do ĝi ne provas komputi ĉiujn siajn elementojn unue. Kaj ĉi tiuj elementoj ne havas finon.

Sed en ĉi tiu ekzemplo, Raku ĉiuokaze faras la liston maldiligenta. Intervalo sen fino, kiel `1 .. Inf`, jam estas maldiligenta. Do `say (1 .. Inf).is-lazy` presas `True` sen la prefikso. Ĉi tie `lazy` ŝanĝas nenion. Ĝi nur montras klare, kion vi volas. La prefikso estas vere utila en alia kazo. Foje Raku komputas liston avide, tutan samtempe. Per la prefikso, vi povas fari tian liston maldiligenta.

Plej ofte Raku mem faras bonan elekton. Intervaloj kaj sekvencoj estas maldiligentaj. Normala atribuo al tabelo estas avida. Uzu ĉi tiujn prefiksojn, kiam vi volas alian elekton. Uzu `eager`, por ke malrapida komputado okazu nun. Uzu `lazy` por prokrasti tre grandan aŭ senfinan komputadon.

{% include nav.html %}
