---
title: 'Risinājums: Skaitļu sērijas drukāšana'
---

{% include menu.html %}

Ir vairāk nekā viens veids, kā atrisināt šo uzdevumu.

## Kods 1

Pirmais risinājums ir īsāks un raksturīgāks Raku valodai.

```raku
my $begin = prompt 'Begin: ';
my $end = prompt 'End: ';

.say for $begin .. $end;
```

🦋 Atrodiet programmu failā [series-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers.raku).

## Kods 2

Otrs iespējamais risinājums izmanto `loop` paziņojumu.

```raku
my $begin = prompt 'Begin: ';
my $end = prompt 'End: ';

loop (my $n = $begin; $n <= $end; $n++) {
    say $n;
}
```

🦋 Atrodiet programmu failā [series-of-numbers-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers-loop.raku).

Kā redzat, pirmais variants ir daudz īsāks un skaidrāk parāda ideju.

## Diskusija

Programmas pirmais variants izmanto [`for` cikla postfix formu](/lv/essentials/loops/postfix-for). Otrā programma izmanto `loop`.

## Izvade

Palaidiet programmu un ievadiet abus skaitļus konsolē. Abi varianti dod vienādu izvadi.

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
