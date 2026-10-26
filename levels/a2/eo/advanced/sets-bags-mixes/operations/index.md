---
title: Araj operacioj
translations_gpt:
---

{% include menu.html %}

Vi povas kombini arojn per la kutimaj operacioj el la aroteorio. Aroteorio estas parto de matematiko. Ĉiu operatoro havas Unikodan simbolon. Ĝi ankaŭ havas manieron skribi ĝin per ASCII. Uzu tiun, kiun vi pli ŝatas.

La _kunigo_ estas `∪`, aŭ `(|)` en ASCII. Ĝi prenas ĉiujn valorojn el ambaŭ aroj:

```raku
say (set(1, 2, 3) ∪ set(3, 4, 5)).elems; # 5
```

La valoro `3` estas en ambaŭ aroj. Do la kunigo havas kvin distingajn elementojn: `1, 2, 3, 4, 5`.

La _komunaĵo_ estas `∩`, aŭ `(&)` en ASCII. Ĝi konservas nur la valorojn, kiuj estas en ambaŭ aroj:

```raku
my $common = set(1, 2, 3) ∩ set(2, 3, 4);
say $common;       # Set(2 3) — notu, ke aroj estas neordigitaj
say $common.elems; # 2
say 2 ∈ $common;   # True
```

Ĉi tie, la komunaĵo havas `2` kaj `3`. Ĉi tiuj valoroj estas en ambaŭ aroj. Aro ne havas ordon. Do en la eligo, la du elementoj povas veni en ajna ordo.

Ĉi tiuj operacioj ankaŭ donas aron. Do vi povas fari al ĝi la samajn demandojn. Kiom da elementoj ĝi havas? Ĉu certa valoro estas en ĝi?

{% include nav.html %}
