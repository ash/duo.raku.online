---
title: Opmaak en code
translations_gpt:
---

{% include menu.html %}

In Pod-tekst markeer je woorden met _opmaakcodes_. Elke code is één letter. Na de letter zet je punthaken rond de tekst:

* `B<…>` — vet
* `I<…>` — cursief
* `C<…>` — code (alle letters hebben dezelfde breedte)
* `L<…>` — een link

```raku
=begin pod

This is B<important>, and C<say> is a built-in.

=end pod
```

In de opgemaakte tekst is `important` vet. `say` staat in een lettertype voor code. Je kunt een code in een andere code zetten. Zo combineer je ze. `B<C<say>>` is dus vette code.

Soms heb je een heel blok code nodig. Een kort stukje in een regel is niet genoeg. Gebruik dan een codeblok: `=begin code … =end code`. Het heeft een regel aan het begin en een regel aan het eind. Het bewaart de tekst precies zoals hij is:

```raku
=begin pod

Here is how to call it:

=begin code
say greet('world');
=end code

=end pod
```

De regels in het codeblok verschijnen precies zoals je ze schrijft. Raku leest ze niet als Pod. Pod heeft dus codes binnen regels, en het heeft codeblokken. Daarmee kun je een API beschrijven. Een API is de manier waarop andere programma's je code gebruiken. Je schrijft opgemaakte tekst en voorbeelden. De voorbeelden zien eruit als code die je kunt uitvoeren. Alles blijft naast de code die het beschrijft.

{% include nav.html %}
