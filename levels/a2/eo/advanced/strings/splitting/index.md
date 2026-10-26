---
title: Disigo kaj kunigo
translations_gpt:
---

{% include menu.html %}

Vi povas disigi ĉenon en partojn en pluraj manieroj. Vi ankaŭ povas kunmeti la partojn denove.

La metodo `words` disigas ĉenon en liston de vortoj. Blankspaco, ekzemple spaceto, apartigas la vortojn:

```raku
say 'Hello big World'.words; # (Hello big World)
```

La metodo `split` tranĉas ĉenon ĉe apartigilo. Vi elektas la apartigilon:

```raku
say 'a,b,c'.split(','); # (a b c)
```

Jen grava speciala kazo. Vi povas disigi laŭ la **malplena ĉeno** `''`. Tiam vi ricevas la unuopajn signojn de la ĉeno. Sed vi ankaŭ ricevas du pliajn malplenajn ĉenojn. Ili estas tute komence kaj tute fine. Do la rezulto havas du elementojn pli ol vi atendas:

```raku
say 'abc'.split('').elems;        # 5 — la tri literoj, plus malplena ĉeno ĉe ĉiu fino
say 'abc'.split('', :skip-empty); # (a b c) — la adverbo :skip-empty forigas la malplenajn
```

Ĉu vi volas disigi ĉenon en signojn? Voku la metodon `comb` sen argumentoj. Ĝi faras tion rekte. Ne estas kromaj malplenaj ĉenoj:

```raku
say 'Raku'.comb; # (R a k u)
```

La metodo `join` faras la malon. Ĝi kunigas liston de valoroj en unu ĉenon. Ĝi metas apartigilon inter la valorojn:

```raku
say <a b c>.join('-'); # a-b-c
```

Du pliaj metodoj laboras kun partoj de ĉeno. La metodo `substr` donas al vi pecon de ĉeno. Vi donas al ĝi komencan pozicion. Se vi volas, vi ankaŭ povas doni al ĝi longecon:

```raku
say 'Hello World'.substr(0, 5); # Hello
say 'Hello World'.substr(6);    # World
```

Kaj `trim` forigas la blankspacon ĉe ambaŭ finoj de ĉeno:

```raku
say '  hi  '.trim; # hi
```

{% include nav.html %}
