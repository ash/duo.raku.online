---
title: 'Solvo: Vidita antaŭe?'
---

{% include menu.html %}

Ĉi tiu tasko estas klasika ekzemplo de uzo de haketo por memori erojn. Antaŭ la buklo, la programo kreas la haketon `%seen`. Ene de la buklo, la enigita vorto `$word` estas uzata kiel ŝlosilo de la haketo.

## Kodo

Jen la solvo:

```raku
my %seen;
loop {
    my $word = prompt 'Word: ';
    if %seen{$word} {
        say %seen{$word} == 1 ?? 'Seen!' !! say "Seen %seen{$word} times!";
    }
    %seen{$word}++;
}
```

🦋 Trovu la programon en la dosiero [seen-before.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/seen-before.raku).

## Eligo

```console
$ raku exercises/associatives/seen-before.raku
Word: I
Word: never
Word: saw
Word: a
Word: saw
Seen!
Word: that
Word: saw
Seen 2 times!
True
Word: as
Word: that
Seen!
Word: saw
Seen 3 times!
True
Word: sawed
Word: ^C
```

## Komento

La konstruo `%seen{$word}++` ne nur aldonas 1 al la valoro. Ĝi ankaŭ kreas la valoron, se ĝi ne ekzistis antaŭe. Ĉi tiu maniero krei valoron nomiĝas _aŭtovivigo_. Notu, ke nur _legi_ la valoron, kiel en la kondiĉo `if %seen{$word}`, ne kreas ĝin.

{% include nav.html %}
