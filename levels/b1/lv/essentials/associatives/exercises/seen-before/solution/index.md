---
title: 'Risinājums: Redzēts agrāk?'
---

{% include menu.html %}

Šis uzdevums ir klasisks piemērs, kā ar hešu sekot līdzi vienumiem. Pirms cikla programma izveido hešu `%seen`. Cikla iekšpusē ievadīto vārdu `$word` izmanto kā heša atslēgu.

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

Konstrukcija `%seen{$word}++` ne tikai pieskaita 1 vērtībai. Tā arī izveido vērtību, ja tās agrāk nebija. Šādu vērtības izveidi sauc par _autovivifikāciju_. Ņemiet vērā, ka tikai _lasot_ vērtību, kā nosacījumā `if %seen{$word}`, tā netiek izveidota.

{% include nav.html %}
