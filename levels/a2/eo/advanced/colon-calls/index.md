---
title: Vokado per dupunkto
translations_gpt:
---

{% include menu.html %}

Kutime la argumentoj de metodo aŭ subfunkcio estas en krampoj: `@a.grep(* > 5)`. Raku havas duan manieron. Metu **dupunkton** post la nomo. Ĉio post la dupunkto fariĝas la listo de argumentoj. Vi tute ne bezonas krampojn:

```raku
say (1..10).grep: * %% 2; # (2 4 6 8 10)
```

La dupunkto en `grep:` faras la saman laboron kiel krampoj. `(1..10).grep: * %% 2` signifas ekzakte la samon kiel `(1..10).grep(* %% 2)`. Vi povas uzi ajnan el la du formoj:

```raku
say <a b c>.join('-'); # a-b-c
say <a b c>.join: '-'; # a-b-c
```

La dupunkta formo estas plej agrabla kun kelkaj metodoj. Ili prenas **blokon** aŭ [Whatever](/eo/advanced/whatever)-esprimon. La dupunkto forigas unu nivelon de krampoj. Komparu:

```raku
my @a = 3, 1, 2;

say @a.sort({ $^b <=> $^a }); # krampoj chirkaue de la bloko
say @a.sort: { $^b <=> $^a }; # dupunkto — neniu ferma krampo por pari
```

Ambaŭ linioj presas `(3 2 1)`. Sed la versio kun la dupunkto estas pli facile legebla. Tio validas eĉ pli por longa bloko.

Vi jam konas vokojn sen krampoj. Vi uzas ilin kun listaj operatoroj, kiel `say 1, 2, 3`. Tie, `say` prenas ĉion post si kiel siajn argumentojn. La dupunkta formo estas la sama ideo por metodoj. Memoru unu regulon. La dupunkta formo prenas la **reston de la deklaro** kiel argumentojn. Do ĝi devas esti ĉe la **fino** de ĉeno de vokoj. Tial `('a' .. 'z')».uc».ord.grep: 60 < * < 70` funkcias. `grep` estas la lasta voko. Nenio venas post ĝi en la ĉeno. Ĉu vi bezonas voki pliajn metodojn? Tiam uzu la formon kun krampoj. Aŭ grupigu la partojn de la tuta esprimo per krampoj. Tiel la kodo estas klara:

```raku
say (('a' .. 'z')».uc».ord.grep: 60 < * < 70)».chr # (A B C D E)
```

Atentu pri unu afero. Ne uzu la dupunkton **kaj** krampojn kune, kiel `.grep:( … )`. En Raku, `:( … )` signifas ion alian. Ĝi estas signaturo, skribita kiel valoro. Do Raku ne povas legi ĉi tiun kodon. Uzu aŭ `.grep( … )`, aŭ `.grep: …`. Uzu unu el ili, ne ambaŭ.

{% include nav.html %}
