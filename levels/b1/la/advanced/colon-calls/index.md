---
title: Vocatio cum duplo puncto
translations_gpt:
---

{% include menu.html %}

Cum methodum vel subroutinam vocas, argumenta eius plerumque in parenthesibus ponis: `@a.grep(* > 5)`. Raku etiam alteram formam habet. **Colonum** post nomen ponis. Tum omnia post eum fiunt index argumentorum. Parenthesibus omnino non eges:

```raku
say (1..10).grep: * %% 2; # (2 4 6 8 10)
```

Colon in `grep:` idem munus praestat quod parentheses. Itaque `(1..10).grep: * %% 2` prorsus significat `(1..10).grep(* %% 2)`. Semper alteram formam pro altera adhibere potes:

```raku
say <a b c>.join('-'); # a-b-c
say <a b c>.join: '-'; # a-b-c
```

Forma cum colono maxime placet cum methodis quae **codicem clausum** vel expressionem [Whatever](/la/advanced/whatever) accipiunt. Causa est quod unum gradum parenthesium intra parentheses removet. Compara:

```raku
my @a = 3, 1, 2;

say @a.sort({ $^b <=> $^a }); # parentheses circa codicem clausum
say @a.sort: { $^b <=> $^a }; # colon — nulla parenthesis claudenda
```

Ambae lineae `(3 2 1)` imprimunt, sed versio cum colono facilius legitur. Hoc praecipue verum est cum codex clausus longus est.

Vocationes sine parenthesibus iam cum operatoribus indicis adhibes, ut `say 1, 2, 3`. Ibi `say` omnia post se ut argumenta sua accipit. Forma cum colono eadem res est pro vocationibus methodorum. Una regula memoranda est. Forma cum colono **reliquum enuntiati** ut argumenta sua accipit. Itaque in **fine** catenae vocationum venire debet. Ideo `('a' .. 'z')».uc».ord.grep: 60 < * < 70` operatur. Hic `grep` ultima vocatio est, et nihil post eam in catenam adiungitur. Si plures methodos vocare debes, formam cum parenthesibus potius adhibe. Aut partes totius expressionis coniunge ut clara sit:

```raku
say (('a' .. 'z')».uc».ord.grep: 60 < * < 70)».chr # (A B C D E)
```

Una res cavenda est. Noli colonum **et** parentheses simul adhibere, ut in `.grep:( … )`. Hoc cum `:( … )` confligit, quae syntaxis est signaturae literalis. Itaque Raku codicem legere non potest. Adhibe aut `.grep( … )` aut `.grep: …`. Alterum adhibe, non utrumque.

{% include nav.html %}
