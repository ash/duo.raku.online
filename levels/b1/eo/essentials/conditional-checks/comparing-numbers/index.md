---
title: Komparante nombrojn
---

{% include menu.html %}

Por kompari du nombrojn, uzu la jenajn operatorojn. Se vi konas aliajn programlingvojn, ili ĉiuj estas sufiĉe klaraj.

`==` | Egala
`!=` | Ne egala
`<` | Malpli ol
`<=` | Malpli ol aŭ egala
`>` | Pli granda ol
`>=` | Pli granda ol aŭ egala

## Proksimume-egala

Krom la normaj operatoroj, Raku aldonas unu plian: la proksimume-egalan operatoron `=~=`. Ĝi kontrolas, ĉu du nombroj estas preskaŭ egalaj. La rezulto estas `True`, se la du nombroj estas relative proksimaj unu al la alia. La relativa diferenco ne rajtas esti pli granda ol la enkonstruita valoro `$*TOLERANCE`. Ĉi tiu valoro estas `1e-15`.

## Unikodaj versioj

Kelkaj el la supraj operatoroj havas ankaŭ Unikodajn versiojn:

`!=` | `≠`
`<=` | `≤` 
`>=` | `≥`
`=~=` | `≅`

## Ekzemploj

Jen kelkaj ekzemploj, kiuj komparas nombrojn per ĉi tiuj operatoroj:

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

Notu, ke `1.000000000000000000000001` estas `Rat` nombro. Pro tio, la komparo kun la proksima nombro `1.000000000000000000000002` konservas plenan precizecon. La lasta ekzemplo, kun `2e17`, laboras kun `Num` nombroj. Ilia precizeco estas limigita.

{% include nav.html %}
