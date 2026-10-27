---
title: La hereda ĉeno
translations_gpt:
---

{% include menu.html %}

Se klaso heredas de alia, vi povas peti ĝian tutan ĉenon de tipoj. La metametodo `.^mro` redonas ĉi tiun ĉenon. La nomo signifas _ordo de metodserĉado_. Tio estas la ordo, en kiu Raku serĉas metodon.

```raku
class Animal {
}

class Dog is Animal {
}

say Dog.^mro; # ((Dog) (Animal) (Any) (Mu))
```

Legu la liston de maldekstre. `Dog` estas unue si mem, poste `Animal` (ĝia patro), kaj poste `Any` kaj `Mu`. Ĉi tiuj du tipoj estas tute supre, kaj ĉiu Raku-objekto heredas de ili. Por metodvoko sur `Dog`, Raku traserĉas ĉi tiun liston de maldekstre dekstren. Ĝi uzas la unuan kongruan metodon, kiun ĝi trovas. Ĝuste tial la metodo de ido superregas la metodon de la patro. La ido venas pli frue en la ĉeno.

Se klaso ne havas patron, kiun vi mem nomas, la ĉeno estas pli mallonga. Ĝi havas nur la klason mem, sekvatan de `Any` kaj `Mu`.

{% include nav.html %}
