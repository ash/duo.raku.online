---
title: Lexicaal bereik
---

{% include menu.html %}

Een codeblok maakt wat we een lexicale scope noemen. Als je een variabele in een blok declareert, is hij zichtbaar binnen het blok. Maar hij is niet zichtbaar nadat het programma het blok verlaat. Hier is een voorbeeld:

```raku
{
    my $x = 42;
    say $x;
}

say $x;
```

De variabele `$x` wordt in het codeblok gemaakt. De eerste `say $x` print zijn waarde, omdat de variabele binnen het blok zichtbaar is. De tweede `say $x` mislukt, omdat de naam `$x` buiten het blok niet bestaat. Als het blok voorbij is, is de naam niet bekend. Het programma compileert niet, en je krijgt een foutmelding:

    ===SORRY!=== Error while compiling /Users/ash/raku-course/t.raku
    Variable '$x' is not declared
    at /Users/ash/raku-course/t.raku:6
    ------> say ⏏$x;

{% include nav.html %}
