---
title: Lexicaal bereik
---

{% include menu.html %}

Een codeblok maakt een lexicale scope. Wat betekent dat? Je maakt een variabele in een blok. Hij is zichtbaar in dit blok. Dan verlaat het programma het blok. Daarna is de variabele niet zichtbaar. Bekijk een voorbeeld:

```raku
{
    my $x = 42;
    say $x;
}

say $x;
```

We maken de variabele `$x` in het codeblok. De eerste `say $x` staat in het blok. Daar is de variabele zichtbaar. Dus print `say` zijn waarde. De tweede `say $x` mislukt. Buiten het blok bestaat de naam `$x` niet. Na het einde van het blok kent het programma hem niet. Het programma compileert niet. Je krijgt een foutmelding:

    ===SORRY!=== Error while compiling /Users/ash/raku-course/t.raku
    Variable '$x' is not declared
    at /Users/ash/raku-course/t.raku:6
    ------> say ⏏$x;

{% include nav.html %}
