---
title: Booleana operationes cum aliis typis
---

{% include menu.html %}

Sectio proxima est de [mutatione datorum ex uno typo in alium](/la/essentials/coercion). Sed primum unam proprietatem gravem Raku specta. Operationes Booleanas etiam ad chordas vel integros applicare potes. Tum Raku valores in valores Booleanos non mutat. Nec eventus est valor Booleanus. Specta haec exempla:

```raku
say 'Hello' && 'World'; # World
say 'Alpha' || 'Beta';  # Alpha
say 0 ^^ 42;            # 42
```

Hic sunt regulae 📖 [ex documentis](https://docs.raku.org/language/operators#Tight_AND_precedence):

* `&&` reddit primum valorem quem Raku ut Falsum videt. Si talis valor non est, ultimum valorem reddit.
* `||` reddit primum valorem quem Raku ut Verum videt. Si talis valor non est, ultimum valorem reddit.
* `^^` reddit valorem Verum, si solum unus valor Verus est. Si omnes valores Falsi sunt, ultimum valorem reddit. Si plures valores Veri sunt, `Nil` reddit.

Hic novum valorem videmus, `Nil`. Est valor ‘nullum’.

{% include nav.html %}
