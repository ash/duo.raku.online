---
title: Obiecta generis et exempla
translations_gpt:
---

{% include menu.html %}

Nomen classis scribere potes, sicut `Dog`. Hoc nomen _obiectum generis_ classis significat. Obiectum generis ipsum genus repraesentat. Non est unum ex obiectis huius generis. Sed _exemplar_ aliud est. Id per `new` facis. Verum obiectum est.

Raku differentiam inter ea videt. Methodus `defined` pro obiecto generis `False` reddit. Pro exemplari `True` reddit:

```raku
class Dog {
}

say Dog.defined;     # False
say Dog.new.defined; # True
```

Obiectum generis nulla vera data habet. Solum genus describit. Itaque Raku id _indefinitum_ appellat. Exemplar verum obiectum est. Itaque _definitum_ est.

`WHAT` pro utroque idem genus ostendit. `WHAT` in [sectione de receptaculis](/la/advanced/containers) vidisti:

```raku
class Dog {
}

say Dog.WHAT;     # (Dog)
say Dog.new.WHAT; # (Dog)
```

Raku genus in parenthesibus ostendit, sicut `(Dog)`. Itaque `Dog` et `Dog.new` idem genus habent, `Dog`. Sed diversae res sunt. `Dog` est ipsum genus. `Dog.new` est obiectum huius generis.

{% include nav.html %}
