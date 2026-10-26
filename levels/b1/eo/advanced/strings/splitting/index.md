---
title: Disigo kaj kunigo
translations_gpt:
---

{% include menu.html %}

Estas pluraj manieroj disigi ĉenon en partojn kaj kunigi ilin denove.

La metodo `words` disigas ĉenon ĉe blankspacoj en liston de vortoj:

```raku
say 'Hello big World'.words; # (Hello big World)
```

La metodo `split` disigas ĉenon ĉe apartigilo, kiun vi elektas:

```raku
say 'a,b,c'.split(','); # (a b c)
```

Grava speciala kazo estas disigo laŭ la **malplena ĉeno** `''`. Ĝi disigas ĉenon en ĝiajn unuopajn signojn. Sed ĝi ankaŭ aldonas malplenan ĉenon tute komence kaj tute fine. Do la rezulto havas du elementojn pli ol vi eble atendus:

```raku
say 'abc'.split('').elems;        # 5 — la tri literoj, plus malplena ĉeno ĉe ĉiu fino
say 'abc'.split('', :skip-empty); # (a b c) — la adverbo :skip-empty forigas la malplenajn
```

Por disigi ĉenon en signojn, vi povas voki la metodon `comb` sen argumentoj. Ĝi faras tion rekte, kaj ne estas kromaj malplenaj ĉenoj por forigi:

```raku
say 'Raku'.comb; # (R a k u)
```

Por iri en la alian direkton, uzu la metodon `join`. Ĝi kunigas liston de valoroj en unu ĉenon kaj metas apartigilon inter ilin:

```raku
say <a b c>.join('-'); # a-b-c
```

Du pliaj metodoj laboras kun partoj de ĉeno. La metodo `substr` redonas pecon de ĉeno. Vi donas al ĝi komencan pozicion kaj, se vi volas, longecon:

```raku
say 'Hello World'.substr(0, 5); # Hello
say 'Hello World'.substr(6);    # World
```

Kaj `trim` forigas la blankspacon ĉe la komenco kaj ĉe la fino de ĉeno:

```raku
say '  hi  '.trim; # hi
```

{% include nav.html %}
