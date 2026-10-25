---
title: 'Risinājums: Redzēts agrāk?'
---

{% include menu.html %}

Šis ir klasisks uzdevums hešam. Hešs atceras, kuri vienumi jau bija. Pirms cikla programma izveido hešu `%seen`. Ciklā lietotājs ievada vārdu `$word`. Programma izmanto šo vārdu kā heša atslēgu.

## Kods

Šeit ir risinājums:

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

🦋 Atrodiet programmu failā [seen-before.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/seen-before.raku).

## Izvade

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

## Komentārs

Kods `%seen{$word}++` pieskaita 1 vērtībai. Ja vērtības vēl nav, kods to arī izveido. Šādu vērtības izveidi sauc par _autovivifikāciju_. Ņemiet vērā, ka tas nenotiek, ja jūs vērtību tikai _lasāt_. Piemēram, tas nenotiek nosacījumā `if %seen{$word}`.

{% include nav.html %}
