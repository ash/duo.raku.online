---
title: Ĉenoj
translations_gpt:
---

{% include menu.html %}

En la parto Esencoj, vi lernis, [kiel konstrui ĉenojn](/eo/essentials/strings). Vi lernis kunigi ĉenojn kaj interpoli. Vi ankaŭ lernis trovi la longecon de ĉeno. Ĉenoj ankaŭ havas multajn metodojn. Ĉi tiu sekcio montras la plej utilajn. Serĉado per [regulesprimoj](/eo/regexes) estas aparta, pli granda temo. Ĝi havas sian propran parton poste en la kurso.

Tri metodoj ŝanĝas la literusklecon de ĉeno. Tio signifas grandajn aŭ malgrandajn literojn:

```raku
say 'raku'.uc; # RAKU  — majuskloj
say 'RAKU'.lc; # raku  — minuskloj
say 'raku'.tc; # Raku  — titolusklo (unua litero majuskligita)
```

La metodo `flip` skribas la signojn de ĉeno en inversa ordo:

```raku
say 'Raku'.flip; # ukaR
```

Kaj la operatoro `x` ripetas ĉenon plurfoje. Vi donas la nombron de fojoj:

```raku
say 'ab' x 3; # ababab
```

La sekvaj temoj montras, kiel serĉi en ĉenoj. Ili ankaŭ montras, kiel disigi ĉenojn en partojn. Kaj ili montras, kiel kunigi la partojn denove.

{% include nav.html %}
