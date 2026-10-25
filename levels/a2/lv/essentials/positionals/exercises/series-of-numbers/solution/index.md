---
title: 'Risinājums: Skaitļu sērijas drukāšana'
---

{% include menu.html %}

Jūs varat atrisināt šo uzdevumu vairāk nekā vienā veidā.

## Kods 1

Pirmais risinājums ir īsāks. Tas arī vairāk atbilst Raku stilam.

```raku
my $begin = prompt 'Begin: ';
my $end = prompt 'End: ';

.say for $begin .. $end;
```

🦋 Atrodiet programmu failā [series-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers.raku).

## Kods 2

Otrais risinājums izmanto `loop` paziņojumu.

```raku
my $begin = prompt 'Begin: ';
my $end = prompt 'End: ';

loop (my $n = $begin; $n <= $end; $n++) {
    say $n;
}
```

🦋 Atrodiet programmu failā [series-of-numbers-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers-loop.raku).

Kā redzat, pirmais variants ir daudz īsāks. Tas arī skaidrāk parāda ideju.

## Diskusija

Pirmais variants izmanto [`for` cikla postfix formu](/lv/essentials/loops/postfix-for). Šajā formā `for` ir aiz izteiksmes. Otrā programma izmanto `loop`.

## Izvade

Palaidiet programmu. Ievadiet abus skaitļus konsolē. Abi varianti izdrukā vienu un to pašu rezultātu.

```console
$ raku exercises/positionals/series-of-numbers.raku
Begin: 15
End: 19
15
16
17
18
19
```

{% include nav.html %}
