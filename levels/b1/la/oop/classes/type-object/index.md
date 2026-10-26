---
title: Obiecta generis et exempla
translations_gpt:
---

{% include menu.html %}

Nomen classis, sicut `Dog`, _obiectum generis_ classis significat. Obiectum generis ipsum genus repraesentat. Non est ullum certum obiectum illius generis. Sed _exemplar_, quod per `new` creas, verum obiectum est.

Raku differentiam inter haec duo videre potest. Methodus `defined` pro obiecto generis `False` reddit et pro exemplari `True`:

```raku
class Dog {
}

say Dog.defined;     # False
say Dog.new.defined; # True
```

Obiectum generis _indefinitum_ habetur, quia nulla vera data continet. Solum genus describit. Exemplar _definitum_ est, quia verum obiectum est.

Per `WHAT` utrumque idem genus ostendit. `WHAT` iam in [sectione de receptaculis](/la/advanced/containers) invenisti:

```raku
class Dog {
}

say Dog.WHAT;     # (Dog)
say Dog.new.WHAT; # (Dog)
```

Raku genus in parenthesibus ostendit, ut in `(Dog)`. Itaque `Dog` et `Dog.new` idem genus habent, `Dog`. Sed differentia est. `Dog` est ipsum genus, et `Dog.new` est obiectum illius generis.

{% include nav.html %}
