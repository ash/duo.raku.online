---
title: Opmaak en code
translations_gpt:
---

{% include menu.html %}

Binnen Pod-tekst markeer je woorden met _opmaakcodes_ van één letter. Je schrijft de letter en daarna punthaken rond de tekst:

* `B<…>` — vet
* `I<…>` — cursief
* `C<…>` — code (met alle letters even breed)
* `L<…>` — een link

```raku
=begin pod

This is B<important>, and C<say> is a built-in.

=end pod
```

Na het renderen staat `important` vetgedrukt en `say` in een codelettertype. Codes kunnen in elkaar zitten en gecombineerd worden, dus `B<C<say>>` is vetgedrukte code.

Soms heb je een heel blok code nodig, niet alleen een stukje in een regel. Gebruik dan een codeblok met een duidelijke begin- en eindregel, `=begin code … =end code`. Het bewaart de tekst precies zoals hij geschreven is:

```raku
=begin pod

Here is how to call it:

=begin code
say greet('world');
=end code

=end pod
```

De regels in het codeblok worden precies getoond zoals ze geschreven zijn. Ze worden niet als Pod gelezen. Met inline codes en codeblokken samen kan Pod een API documenteren. Het kan opgemaakte tekst bevatten en voorbeelden die eruitzien als echte, werkende code. Dit alles blijft naast de code die het beschrijft.

{% include nav.html %}
