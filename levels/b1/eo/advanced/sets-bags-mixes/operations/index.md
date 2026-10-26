---
title: Araj operacioj
translations_gpt:
---

{% include menu.html %}

Vi povas kombini arojn per la kutimaj operacioj el la aroteorio. Ĉiu operatoro havas Unikodan simbolon kaj ASCII-literumon. Vi povas uzi iun ajn el ili.

La _kunigo_ `∪`, aŭ `(|)`, kolektas ĉiujn valorojn de ambaŭ aroj:

```raku
say (set(1, 2, 3) ∪ set(3, 4, 5)).elems; # 5
```

Ĉar ambaŭ aroj enhavas `3`, la kunigo havas kvin distingajn elementojn: `1, 2, 3, 4, 5`.

La _komunaĵo_ `∩`, aŭ `(&)`, konservas nur la valorojn, kiujn ambaŭ aroj havas:

```raku
my $common = set(1, 2, 3) ∩ set(2, 3, 4);
say $common;       # Set(2 3) — notu, ke aroj estas neordigitaj
say $common.elems; # 2
say 2 ∈ $common;   # True
```

Ĉi tie, la komunaĵo havas `2` kaj `3`, la valorojn, kiuj estas en ambaŭ aroj. Aro ne havas propran ordon. Do kiam vi presas ĝin, la du elementoj povas veni en ajna ordo.

La rezulto de ĉi tiuj operacioj ankaŭ estas aro. Do vi povas fari al ĝi la samajn demandojn. Kiom da elementoj ĝi havas, kaj ĉu certa valoro estas en ĝi?

{% include nav.html %}
