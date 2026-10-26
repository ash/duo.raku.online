---
title: Formatio et codex
translations_gpt:
---

{% include menu.html %}

Intra textum Pod verba _notis formationis_ unius litterae ornas. Litteram scribis et deinde uncos angulares circa textum:

* `B<…>` — crassum
* `I<…>` — obliquum
* `C<…>` — codex (cum omnibus litteris eiusdem latitudinis)
* `L<…>` — nexus

```raku
=begin pod

This is B<important>, and C<say> is a built-in.

=end pod
```

Post redditionem `important` crasse ostenditur et `say` litteris codicis. Notae aliae intra alias poni et componi possunt, itaque `B<C<say>>` est codex crassus.

Interdum totum truncum codicis requiris, non solum partem intra lineam. Tum trunco codicis utere cum lineis initii et finis claris, `=begin code … =end code`. Textum prorsus ut scriptus est servat:

```raku
=begin pod

Here is how to call it:

=begin code
say greet('world');
=end code

=end pod
```

Lineae intra truncum codicis prorsus ut scriptae sunt ostenduntur. Ut Pod non leguntur. Cum notis in linea et truncis codicis Pod API documentare potest. Textum formatum habere potest et exempla quae vero codici operanti similia sunt. Haec omnia iuxta codicem manent quem describunt.

{% include nav.html %}
