---
title: Ekzistas kaj forigi
translations_gpt:
---

{% include menu.html %}

La adverbo `:exists` ŝanĝas subskribon en demandon. Ĉu estas valoro ĉe ĉi tiu ŝlosilo aŭ indekso? La adverbo redonas bulean valoron, sed ĝi ne prenas la valoron mem:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:exists; # True
say %h<plum>:exists;  # False
```

Tio estas la ĝusta maniero kontroli ŝlosilon. Se vi simple legas `%h<plum>`, vi ricevas nedifinitan valoron. Depende de la datumoj, tio povas kaŝi la diferencon inter «mankanta» kaj «ĉeestanta sed nedifinita».

La adverbo `:delete` forigas la eron kaj redonas al vi ĝian valoron:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:delete; # 1
say %h.keys;          # (pear)
say %h;               # {pear => 2}
```

La ero `apple` malaperis. Vi ricevas reen la forigitan valoron `1`, do vi povas uzi ĝin.

Ambaŭ adverboj funkcias ankaŭ ĉe tabeloj, kun indekso:

```raku
my @a = 10, 20, 30;

say @a[1]:exists; # True
say @a[5]:exists; # False

say @a[1]:delete; # 20
say @a[1]:exists; # False
```

Kiel aspektas la tabelo, post kiam ero en la mezo estas forigita? Jen la respondo:

```raku
say @a; # [10 (Any) 30]
```

Do unu konsekvenca skribmaniero permesas al vi kontroli kaj ŝanĝi ujojn surloke. Vi ne bezonas apartajn metodojn por tio.

{% include nav.html %}
