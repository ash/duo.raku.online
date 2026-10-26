---
title: Ĉenoj
translations_gpt:
---

{% include menu.html %}

En la parto Esencoj, vi lernis, [kiel konstrui ĉenojn](/eo/essentials/strings). Vi vidis kunmeton, interpoladon kaj la longecon de ĉeno. Ĉenoj ankaŭ havas grandan aron da metodoj. Ĉi tiu sekcio kolektas la plej utilajn. Serĉado per [regulesprimoj](/eo/regexes) estas aparta, pli granda temo. Ĝi estas traktata en propra parto poste.

Tri metodoj ŝanĝas la usklecon de la literoj en ĉeno:

```raku
say 'raku'.uc; # RAKU  — majuskloj
say 'RAKU'.lc; # raku  — minuskloj
say 'raku'.tc; # Raku  — titolusklo (unua litero majuskligita)
```

La metodo `flip` inversigas la ordon de la signoj en ĉeno:

```raku
say 'Raku'.flip; # ukaR
```

Kaj la operatoro `x` ripetas ĉenon tiom da fojoj, kiom vi petas:

```raku
say 'ab' x 3; # ababab
```

La sekvaj temoj montras, kiel serĉi ene de ĉenoj. Ili ankaŭ montras, kiel disigi ĉenojn en partojn kaj kunigi ilin denove.

{% include nav.html %}
