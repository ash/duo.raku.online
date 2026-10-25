---
title: 'Solvo: Vidita antaŭe?'
---

{% include menu.html %}

Ĉi tio estas klasika tasko por haketo. La haketo memoras, kiuj eroj venis antaŭe. Antaŭ la buklo, la programo kreas la haketon `%seen`. En la buklo, la uzanto enigas vorton, `$word`. La programo uzas ĉi tiun vorton kiel ŝlosilon de la haketo.

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

La kodo `%seen{$word}++` aldonas 1 al la valoro. Se la valoro ankoraŭ ne ekzistas, la kodo ankaŭ kreas ĝin. Ĉi tiu maniero krei valoron nomiĝas _aŭtovivigo_. Notu, ke tio ne okazas, kiam vi nur _legas_ la valoron. Ekzemple, ĝi ne okazas en la kondiĉo `if %seen{$word}`.

{% include nav.html %}
