---
title: 'Risinājums: Izpētiet `prompt` rezultātu — Skaitļi'
---

{% include menu.html %}

## Kods

Šeit ir pilna programma. Tā atrisina uzdevumu un izdrukā gan ievadīto vērtību, gan tās tipu.

```raku
my $n = prompt 'Enter a number: ';
say $n;
say $n.WHAT;
```

🦋 Avota kodu var atrast failā [prompt-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-numbers.raku).

## Testa izpildes

Palaidiet programmu vairākas reizes un ievadiet dažāda veida skaitļus.

### Veseli skaitļi

Vispirms izmēģināsim veselus skaitļus, gan pozitīvus, gan negatīvus.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 10
10
(IntStr)
```

Rezultātam ir tips `IntStr`. Šim iebūvētajam tipam ir gan `Int`, gan `Str` īpašības.

### Racionāli skaitļi

Tagad izmēģināsim racionālu skaitli. Atcerieties, ka Raku valodā, ja rakstāt skaitli ar decimālo punktu, jūs iegūstat `Rat` skaitli. Tas nav peldošā punkta skaitlis.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 3.14
3.14
(RatStr)
```

Šoreiz programma saka, ka datiem mainīgajā `$n` ir tips `RatStr`. Tas ir kombinēts tips, kas ir gan `Rat`, gan `Str`.

### Peldošā komata skaitļi

Visbeidzot izmēģiniet skaitli zinātniskajā notācijā. Tagad jūs, iespējams, jau varat uzminēt izvadi.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 5e-14
5e-14
(NumStr)
```

Kā gaidīts, jaunā vērtība ir `NumStr` tipa.

{% include nav.html %}
