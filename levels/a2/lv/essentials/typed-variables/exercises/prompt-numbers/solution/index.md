---
title: 'Risinājums: Izpētiet `prompt` rezultātu — Skaitļi'
---

{% include menu.html %}

## Kods

Šeit ir pilna programma. Tā atrisina uzdevumu. Tā izdrukā vērtību, ko jūs ievadāt, un tās tipu.

```raku
my $n = prompt 'Enter a number: ';
say $n;
say $n.WHAT;
```

🦋 Avota kodu var atrast failā [prompt-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-numbers.raku).

## Testa izpildes

Palaidiet programmu dažas reizes. Ievadiet dažāda tipa skaitļus.

### Veseli skaitļi

Vispirms izmēģināsim veselus skaitļus. Izmēģiniet pozitīvus un negatīvus.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 10
10
(IntStr)
```

Rezultāta tips ir `IntStr`. Šis tips Raku valodā ir iebūvēts. Tam ir `Int` un `Str` īpašības.

### Racionāli skaitļi

Tagad izmēģināsim racionālu skaitli. Atcerieties: Raku valodā skaitlis ar decimālo punktu ir `Rat`. Tas nav peldošā punkta skaitlis.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 3.14
3.14
(RatStr)
```

Šoreiz datiem mainīgajā `$n` ir tips `RatStr`. Tas ir kombinēts tips. Tas ir gan `Rat`, gan `Str`.

### Peldošā komata skaitļi

Beigās izmēģiniet skaitli zinātniskajā notācijā, ar burtu `e`. Tagad jūs droši vien varat uzminēt izvadi.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 5e-14
5e-14
(NumStr)
```

Jā, jaunajai vērtībai ir tips `NumStr`.

{% include nav.html %}
