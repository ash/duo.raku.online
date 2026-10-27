---
title: La hereda ĉeno
translations_gpt:
---

{% include menu.html %}

Unu klaso povas heredi de alia klaso. Tiam vi povas peti la tutan ĉenon de tipoj. La klaso estas konstruita sur ĉi tiuj tipoj. La metametodo `.^mro` redonas ĉi tiun ĉenon. La nomo signifas _ordo de metodserĉado_. Raku serĉas metodon en ĉi tiu ordo.

```raku
class Animal {
}

class Dog is Animal {
}

say Dog.^mro; # ((Dog) (Animal) (Any) (Mu))
```

Legu la liston de maldekstre. Unue, `Dog` estas si mem. Poste ĝi estas `Animal`, ĝia patro. Poste ĝi estas `Any` kaj `Mu`. Ĉiu Raku-objekto heredas de ĉi tiuj du tipoj. Ili estas tute supre. Kiam vi vokas metodon sur `Dog`, Raku traserĉas ĉi tiun liston. Ĝi iras de maldekstre dekstren. Ĝi uzas la unuan metodon, kiu kongruas. Tio klarigas la superregadon. La ido venas pli frue en la ĉeno. Do ĝia metodo venkas la metodon de la patro.

Foje klaso ne havas patron kun `is`. Tiam la ĉeno estas pli mallonga. Ĝi havas nur la klason mem, kaj poste `Any` kaj `Mu`.

{% include nav.html %}
