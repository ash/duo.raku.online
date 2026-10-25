---
title: 'Risinājums: Drukāt brīdinājumu'
---

{% include menu.html %}

## Kods

Šeit ir risinājums:

```raku
my $age = prompt 'Kāds ir jūsu vecums? ';

if $age < 0 {
    note 'Jūs ievadījāt negatīvu skaitli!';
}
else {
    say "Jūsu vecums ir $age";
}
```

🦋 Atrodiet programmu failā [print-the-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/built-in-functions-for-printing/print-the-warning.raku).

## Izvade

Šeit ir divi piemēri:

```console
$ raku exercises/built-in-functions-for-printing/print-the-warning.raku 
Kāds ir jūsu vecums? 20
Jūsu vecums ir 20

$ raku exercises/built-in-functions-for-printing/print-the-warning.raku 
Kāds ir jūsu vecums? -1
Jūs ievadījāt negatīvu skaitli!
```

Vai ziņojums tiešām nonāk `STDERR` plūsmā? Lai to pārbaudītu, novirziet izvadi. Tad jūs neredzat jautājumu par vecumu. Bet jūs joprojām varat ievadīt skaitli. Un jūs joprojām redzat brīdinājumu.

```console
$ raku exercises/built-in-functions-for-printing/print-the-warning.raku > /dev/null
20

$ raku exercises/built-in-functions-for-printing/print-the-warning.raku > /dev/null 
-1
Jūs ievadījāt negatīvu skaitli!
```

{% include nav.html %}
