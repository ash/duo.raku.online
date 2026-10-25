---
title: Komparante nombrojn
---

{% include menu.html %}

Uzu ĉi tiujn operatorojn por kompari du nombrojn. Ĉu vi konas aliajn programlingvojn? Tiam ili ĉiuj estas tre klaraj por vi.

`==` | Egala
`!=` | Ne egala
`<` | Malpli ol
`<=` | Malpli ol aŭ egala
`>` | Pli granda ol
`>=` | Pli granda ol aŭ egala

## Proksimume-egala

Raku havas la normajn operatorojn. Ĝi ankaŭ aldonas unu plian: `=~=`. Ĉi tiu operatoro kontrolas, ĉu du nombroj estas preskaŭ egalaj. La rezulto estas `True`, se la nombroj estas proksimaj. Raku komparas la diferencon kun la grandeco de la nombroj. Tio donas la relativan diferencon. Ĝi ne rajtas esti pli granda ol la enkonstruita valoro `$*TOLERANCE`. Ĉi tiu valoro estas `1e-15`.

## Unikodaj versioj

Kelkaj el ĉi tiuj operatoroj havas ankaŭ Unikodan formon:

`!=` | `≠`
`<=` | `≤` 
`>=` | `≥`
`=~=` | `≅`

## Ekzemploj

Jen kelkaj ekzemploj de komparo de nombroj:

```raku
say 10 == 10; # True
say 10 != 10; # False

say 15 < 10;  # False
say 10 <= 10; # True
say 16 > 10;  # True
say 10 >= 14; # False

say 1.000000000000000000000001 =~= 1.000000000000000000000002; # True
say 2e17 + 1 =~= 2e17 + 100; # True
```

Notu, ke `1.000000000000000000000001` estas `Rat` nombro. La esprimo komparas ĝin kun tre proksima nombro, `1.000000000000000000000002`. Kun `Rat` nombroj, vi ne perdas precizecon ĉi tie. Raku konservas ĉiujn ciferojn. La lasta ekzemplo havas `2e17`. Ĝi uzas `Num` nombrojn. Ilia precizeco estas limigita. Ili ne povas konservi ĉiujn ciferojn.

{% include nav.html %}
