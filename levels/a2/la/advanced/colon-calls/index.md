---
title: Vocatio cum duplo puncto
translations_gpt:
---

{% include menu.html %}

Plerumque argumenta methodi vel subroutinae in parenthesibus sunt: `@a.grep(* > 5)`. Raku alterum modum habet. Pone **colonum** post nomen. Omnia post colonum fiunt index argumentorum. Parentheses omnino non necessariae sunt:

```raku
say (1..10).grep: * %% 2; # (2 4 6 8 10)
```

Colon in `grep:` idem facit quod parentheses. `(1..10).grep: * %% 2` prorsus idem significat quod `(1..10).grep(* %% 2)`. Utramvis formam adhibere potes:

```raku
say <a b c>.join('-'); # a-b-c
say <a b c>.join: '-'; # a-b-c
```

Forma cum colono maxime placet cum quibusdam methodis. Eae **codicem clausum** vel expressionem [Whatever](/la/advanced/whatever) accipiunt. Colon unum gradum parenthesium removet. Compara:

```raku
my @a = 3, 1, 2;

say @a.sort({ $^b <=> $^a }); # parentheses circa codicem clausum
say @a.sort: { $^b <=> $^a }; # colon — nulla parenthesis claudenda
```

Ambae lineae `(3 2 1)` imprimunt. Sed versio cum colono facilius legitur. Hoc etiam magis verum est de codice clauso longo.

Iam vocationes sine parenthesibus nosti. Eas cum operatoribus indicis adhibes, ut `say 1, 2, 3`. Ibi `say` omnia post se ut argumenta sua accipit. Forma cum colono eadem res est pro methodis. Unam regulam memento. Forma cum colono **reliquum enuntiati** ut argumenta accipit. Itaque in **fine** catenae vocationum esse debet. Ideo `('a' .. 'z')».uc».ord.grep: 60 < * < 70` operatur. `grep` ultima vocatio est. Nihil post eam in catena venit. Debesne plures methodos vocare? Tum formam cum parenthesibus adhibe. Aut partes totius expressionis in parenthesibus pone. Hoc codicem clarum facit:

```raku
say (('a' .. 'z')».uc».ord.grep: 60 < * < 70)».chr # (A B C D E)
```

Unam rem cave. Noli colonum **et** parentheses simul adhibere, ut `.grep:( … )`. In Raku `:( … )` aliud significat. Est signatura, ut valor scripta. Itaque Raku hunc codicem legere non potest. Adhibe aut `.grep( … )` aut `.grep: …`. Unum ex eis adhibe, non ambo.

{% include nav.html %}
