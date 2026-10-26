---
title: Vokado per dupunkto
translations_gpt:
---

{% include menu.html %}

Kiam vi vokas metodon aŭ subfunkcion, vi kutime metas ĝiajn argumentojn en krampojn: `@a.grep(* > 5)`. Raku havas ankaŭ duan formon. Vi metas **dupunkton** post la nomo. Tiam ĉio post ĝi fariĝas la listo de argumentoj. Vi tute ne bezonas krampojn:

```raku
say (1..10).grep: * %% 2; # (2 4 6 8 10)
```

La dupunkto en `grep:` faras la saman laboron kiel la krampoj. Do `(1..10).grep: * %% 2` signifas ekzakte `(1..10).grep(* %% 2)`. Vi ĉiam povas uzi unu formon anstataŭ la alia:

```raku
say <a b c>.join('-'); # a-b-c
say <a b c>.join: '-'; # a-b-c
```

La dupunkta formo estas plej agrabla kun metodoj, kiuj prenas **blokon** aŭ [Whatever](/eo/advanced/whatever)-esprimon. Tio estas, ĉar ĝi forigas unu nivelon de krampoj en krampoj. Komparu:

```raku
my @a = 3, 1, 2;

say @a.sort({ $^b <=> $^a }); # krampoj chirkaue de la bloko
say @a.sort: { $^b <=> $^a }; # dupunkto — neniu ferma krampo por pari
```

Ambaŭ linioj presas `(3 2 1)`, sed la dupunkta versio estas pli facile legebla. Tio validas precipe, kiam la bloko estas longa.

Vi jam uzas vokojn sen krampoj kun listaj operatoroj, kiel `say 1, 2, 3`. Tie, `say` prenas ĉion post si kiel siajn argumentojn. La dupunkta formo estas la sama afero por metodaj vokoj. Estas unu regulo por memori. La dupunkta formo prenas la **reston de la deklaro** kiel siajn argumentojn. Do ĝi devas veni ĉe la **fino** de ĉeno de vokoj. Tial `('a' .. 'z')».uc».ord.grep: 60 < * < 70` funkcias. Ĉi tie, `grep` estas la lasta voko, kaj nenio venas post ĝi en la ĉeno. Se vi bezonas voki pliajn metodojn, uzu anstataŭe la formon kun krampoj. Aŭ grupigu la partojn de la tuta esprimo, por ke ĝi estu klara:

```raku
say (('a' .. 'z')».uc».ord.grep: 60 < * < 70)».chr # (A B C D E)
```

Estas unu afero, pri kiu vi devas atenti. Ne uzu la dupunkton **kaj** krampojn kune, kiel en `.grep:( … )`. Tio kolizias kun `:( … )`, la sintakso por signatura literalo. Do Raku ne povas legi la kodon. Uzu aŭ `.grep( … )`, aŭ `.grep: …`. Uzu unu aŭ la alian, ne ambaŭ.

{% include nav.html %}
