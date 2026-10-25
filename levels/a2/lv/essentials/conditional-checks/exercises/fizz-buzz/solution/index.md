---
title: 'Risinājums: FizzBuzz'
---

{% include menu.html %}

Šis ir klasisks uzdevums darba intervijās. Tas pārbauda vienu lietu. Vai jūs padomājat par gadījumu, kad abi nosacījumi ir `True`? Dažreiz skaitlis dalās gan ar 3, gan ar 5 bez atlikuma. Tad programmai jāizdrukā `FizzBuzz`.

## Kods

Šeit ir risinājums:

```raku
my $n = prompt 'Ievadiet skaitli: ';

print 'Fizz' if $n %% 3;
print 'Buzz' if $n %% 5;
print "\n";
```

🦋 Atrodiet programmu failā [fizz-buzz.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/fizz-buzz.raku).

## Piemērs

Pārbaudiet programmu ar dažām skaitļu grupām:

* Skaitļi, kas dalās ar 3, piemēram: 3, 6, 9, 12.
* Skaitļi, kas dalās ar 5, piemēram: 5, 10, 15, 20.
* Skaitļi, kas dalās ar 3 un arī ar 5, piemēram: 15, 30, 45.
* Skaitļi, kas nedalās ne ar 3, ne ar 5, piemēram: 4, 7, 11.

```console
$ raku exercises/conditional-checks/fizz-buzz.raku 
Ievadiet skaitli: 3
Fizz

$ raku exercises/conditional-checks/fizz-buzz.raku
Ievadiet skaitli: 10
Buzz

$ raku exercises/conditional-checks/fizz-buzz.raku
Ievadiet skaitli: 7

$ raku exercises/conditional-checks/fizz-buzz.raku
Ievadiet skaitli: 30
FizzBuzz
```

{% include nav.html %}
