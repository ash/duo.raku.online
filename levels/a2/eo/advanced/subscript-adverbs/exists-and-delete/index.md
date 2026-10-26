---
title: Ekzistas kaj forigi
translations_gpt:
---

{% include menu.html %}

La adverbo `:exists` faras demandon el subskribo. Ĉu estas valoro ĉe ĉi tiu ŝlosilo aŭ indekso? La respondo estas `True` aŭ `False`. La adverbo ne prenas la valoron:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:exists; # True
say %h<plum>:exists;  # False
```

Tio estas la ĝusta maniero kontroli ŝlosilon. Vi ankaŭ povas simple legi `%h<plum>`. Sed tiam vi ricevas nedifinitan valoron. Aŭ, kun iuj datumoj, vi ne povas vidi la diferencon. Ĉu la ŝlosilo estas «mankanta»? Aŭ ĉu ĝi estas «ĉeestanta sed nedifinita»?

La adverbo `:delete` forigas la eron. Ĝi redonas la valoron de la ero:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:delete; # 1
say %h.keys;          # (pear)
say %h;               # {pear => 2}
```

La ero `apple` malaperis. Vi ricevas reen ĝian valoron `1`. Vi povas uzi ĉi tiun valoron.

Ambaŭ adverboj funkcias ankaŭ kun tabeloj. Tie vi uzas indekson:

```raku
my @a = 10, 20, 30;

say @a[1]:exists; # True
say @a[5]:exists; # False

say @a[1]:delete; # 20
say @a[1]:exists; # False
```

Vi forigas eron el la mezo. Kiel la tabelo aspektas tiam? Jen la respondo:

```raku
say @a; # [10 (Any) 30]
```

Do vi uzas unu skribmanieron, kaj ĝi ĉiam funkcias same. Per ĝi, vi povas demandi pri ujo. Vi ankaŭ povas ŝanĝi la ujon surloke. Vi ne bezonas apartajn metodojn por tio.

{% include nav.html %}
