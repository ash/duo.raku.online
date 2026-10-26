---
title: Maldiligentaj kaj senlimaj sekvencoj
translations_gpt:
---

{% include menu.html %}

Sekvenco ne devas kalkuli ĉiujn siajn valorojn samtempe. Sekvencoj en Raku estas _maldiligentaj_. Raku faras ĉiun valoron nur kiam vi vere bezonas ĝin. Do vi povas priskribi sekvencon tute sen fino.

Por senlima sekvenco, uzu `Inf` kiel la finan punkton. Raku faras la `=` antaŭ la `...`. Ni diras, ke `...` ligas pli malforte ol `=`. Do metu la sekvencon en krampojn:

```raku
my $naturals = (1 ... Inf);
```

Rigardu `my $naturals = 1 ... Inf` sen krampoj. Ĉi tie, la variablo ricevas nur `1`. Post tio, Raku konstruas la sekvencon aparte. Neniu uzas ĉi tiun senfinan sekvencon. Sed Raku provas kalkuli ĝin. Do la programo pendas kaj neniam finiĝas.

Ĝis nun, Raku kalkulas nenion. La sekvenco donas al vi valorojn nur kiam vi petas ilin. La metodo `head` prenas la unuajn kelkajn valorojn:

```raku
say (1 ... Inf).head(5); # (1 2 3 4 5)
```

La sekvenco estas senlima. Sed Raku faras nur la unuajn kvin nombrojn. Sen maldiligento, la programo provas konstrui la tutan senfinan sekvencon. Tia programo neniam finiĝas.

Finia sekvenco havas finon. Por tia sekvenco, la metodo `tail` prenas valorojn de la fino:

```raku
say (1 ... 100).tail(3); # (98 99 100)
```

Maldiligento lasas vin fari du aferojn aparte. Unue, vi donas la _priskribon_ de sekvenco. Poste, vi decidas, kiom da ĝi uzi.

{% include nav.html %}
