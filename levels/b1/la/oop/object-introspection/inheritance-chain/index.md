---
title: Catena hereditatis
translations_gpt:
---

{% include menu.html %}

Si classis ab altera heredat, totam catenam generum eius petere potes. Metamethodus `.^mro` hanc catenam reddit. Nomen pro _method resolution order_ stat. Hic est ordo quo Raku methodum quaerit.

```raku
class Animal {
}

class Dog is Animal {
}

say Dog.^mro; # ((Dog) (Animal) (Any) (Mu))
```

Lege indicem a sinistra. `Dog` primum ipse est, deinde `Animal` (parens eius), et deinde `Any` et `Mu`. Haec duo genera in summo sunt, et omne obiectum Raku ab eis heredat. Pro vocatione methodi in `Dog`, Raku hunc indicem a sinistra ad dextram perquirit. Primam methodum convenientem quam invenit adhibet. Haec est exacte causa cur methodus filiae methodum parentis superscribat. Filia prius in catena venit.

Si classis nullum parentem habet quem ipse nominas, catena brevior est. Solum ipsam classem habet, quam `Any` et `Mu` sequuntur.

{% include nav.html %}
