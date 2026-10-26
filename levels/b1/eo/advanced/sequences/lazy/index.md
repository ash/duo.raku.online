---
title: Maldiligentaj kaj senlimaj sekvencoj
translations_gpt:
---

{% include menu.html %}

Sekvenco ne devas kalkuli ĉiujn siajn valorojn samtempe. Sekvencoj de Raku estas _maldiligentaj_: ĉiu valoro estas farata nur kiam ĝi vere estas bezonata. Do vi povas priskribi sekvencon, kiu tute ne havas finon.

Por skribi senliman sekvencon, uzu `Inf` kiel la finan punkton. La operatoro `...` ligas pli malforte ol `=`, do Raku farus la `=` unue. Tial vi metas la sekvencon en krampojn:

```raku
my $naturals = (1 ... Inf);
```

Sen la krampoj, `my $naturals = 1 ... Inf` atribuus nur `1` al la variablo. Poste ĝi konstruus la sekvencon aparte. Kalkuli senfinan sekvencon, kiun neniu uzas, igus la programon pendi.

Ĉe ĉi tiu punkto, nenio estas kalkulita. La sekvenco donas valorojn nur kiam vi petas ilin. La metodo `head` prenas la unuajn kelkajn el ili:

```raku
say (1 ... Inf).head(5); # (1 2 3 4 5)
```

La sekvenco estas senlima, sed nur la unuaj kvin nombroj estas generataj. Sen maldiligento, la programo provus konstrui la tutan senfinan sekvencon. Tia programo neniam finiĝus.

Se sekvenco estas finia, la metodo `tail` povas anstataŭe preni valorojn de ĝia fino:

```raku
say (1 ... 100).tail(3); # (98 99 100)
```

Maldiligento lasas vin apartigi du aferojn. La unua estas la _priskribo_ de sekvenco. La dua estas la decido, kiom da ĝi uzi.

{% include nav.html %}
