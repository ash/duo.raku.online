---
title: Catena hereditatis
translations_gpt:
---

{% include menu.html %}

Una classis ab altera classe heredare potest. Tum totam catenam generum petere potes. Classis super haec genera stat. Metamethodus `.^mro` hanc catenam reddit. Nomen significat _method resolution order_. Raku methodum hoc ordine quaerit.

```raku
class Animal {
}

class Dog is Animal {
}

say Dog.^mro; # ((Dog) (Animal) (Any) (Mu))
```

Lege indicem a sinistra. Primum `Dog` est ipse. Deinde est `Animal`, parens eius. Deinde est `Any` et `Mu`. Omne obiectum Raku ab his duobus generibus heredat. In summo sunt. Cum methodum in `Dog` vocas, Raku hunc indicem perquirit. A sinistra ad dextram it. Primam methodum convenientem adhibet. Hoc explicat superscribere. Filia prius in catena venit. Itaque methodus eius methodum parentis vincit.

Interdum classis nullum parentem cum `is` habet. Tum catena brevior est. Solum ipsam classem habet, et deinde `Any` et `Mu`.

{% include nav.html %}
