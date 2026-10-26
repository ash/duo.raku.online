---
title: Formatio et codex
translations_gpt:
---

{% include menu.html %}

In textu Pod verba _notis formationis_ signas. Quaeque nota una littera est. Post litteram uncos angulares circa textum ponis:

* `B<…>` — crassum
* `I<…>` — obliquum
* `C<…>` — codex (omnes litterae eandem latitudinem habent)
* `L<…>` — nexus

```raku
=begin pod

This is B<important>, and C<say> is a built-in.

=end pod
```

In textu formato `important` crassum est. `say` in litteris codicis est. Unam notam intra aliam notam ponere potes. Sic eas componis. Itaque `B<C<say>>` est codex crassus.

Interdum totum truncum codicis requiris. Brevis pars intra lineam non sufficit. Tum trunco codicis utere: `=begin code … =end code`. Lineam in initio et lineam in fine habet. Textum prorsus servat ut est:

```raku
=begin pod

Here is how to call it:

=begin code
say greet('world');
=end code

=end pod
```

Lineae in trunco codicis prorsus apparent ut eas scribis. Raku eas ut Pod non legit. Itaque Pod notas intra lineas habet, et truncos codicis habet. Eis API describere potes. API est modus quo alia programmata codicem tuum adhibent. Textum formatum et exempla scribis. Exempla similia sunt codici quem exsequi potes. Omnia iuxta codicem manent quem describunt.

{% include nav.html %}
