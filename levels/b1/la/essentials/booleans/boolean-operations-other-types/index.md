---
title: Booleana operationes cum aliis typis
---

{% include menu.html %}

In sectione proxima de [conversione datorum ex uno typo in alium](/la/essentials/coercion) loquemur. Sed antea unam proprietatem Raku notare oportet. Operationes Booleanas ad chordas vel integros applicare potes. In hoc casu valores in Booleanos non convertuntur. Nec eventus est valor Booleanus. Specta haec exempla:

```raku
say 'Hello' && 'World'; # World
say 'Alpha' || 'Beta';  # Alpha
say 0 ^^ 42;            # 42
```

Legamus regulas 📖 [ex documentis](https://docs.raku.org/language/operators#Tight_AND_precedence):

* `&&` reddit primum argumentum quod ut Booleanum Falsum est. Si nullum tale est, ultimum argumentum reddit.
* `||` reddit primum argumentum quod ut Booleanum Verum est. Si nullum tale est, ultimum argumentum reddit.
* `^^` reddit argumentum Verum, si unum tantum est. Si omnia argumenta Falsa sunt, ultimum reddit. Si plus quam unum argumentum Verum est, `Nil` reddit.

Nota: modo `Nil` invenimus, qui est valor ‘nullum’.

{% include nav.html %}
