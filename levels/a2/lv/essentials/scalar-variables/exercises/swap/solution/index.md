---
title: 'Risinājums: Vērtību apmaiņa'
---

{% include menu.html %}

Šī programma izmanto Raku sintaksi no sadaļas par [skalārajiem mainīgajiem](/lv/essentials/scalar-variables).

## Kods

```raku
my ($a, $b) = 10, 20;
($a, $b) = $b, $a;
say "$a, $b";
```

🦋 Jūs varat atrast pirmkodu failā [swap.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/swap.raku).

## Izvade

Palaidiet programmu. Pārbaudiet, vai tā izdrukā vērtības otrādā secībā.

```console
$ raku exercises/scalar-variables/swap.raku
20, 10
```

## Komentāri

Programmā ir trīs soļi. Vispirms tā izveido mainīgos un piešķir tiem vērtības. Tad tā samaina vērtības vietām. Beigās programma tās izdrukā. Katrs solis izmanto abus mainīgos vienā paziņojumā. Apskatiet pašu interesantāko daļu. Šeit mainīgie samaina savas vērtības:

```raku
($a, $b) = $b, $a;
```

Kreisajā pusē jums vajag iekavas. Labajā pusē jūs tās varat arī pievienot:

```raku
($a, $b) = ($b, $a);
```

Kas notiek bez iekavām?

```raku
$a, $b = $b, $a;
```

Tad jūs saņemat brīdinājumu. Tas saka, ka `$a` labajā pusē nav izmantots:

```
$ raku exercises/scalar-variables/swap.raku
BRĪDINĀJUMI par /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Bezjēdzīga $a izmantošana sink kontekstā (2. rinda, 2. rinda)
10, 20
```

Patiesībā šī rinda ir tas pats, kas `$b = $b`. Šī piešķiršana nedara neko noderīgu. Jūs to varat viegli redzēt. Nomainiet vērtības labajā pusē, piemēram, šādi:

```raku
$a, $b = 2 * $b, 3 * $a;
```

Tagad programma izdrukā vēl vairāk brīdinājumu. Bet jūs varat redzēt arī ko citu. Tikai `$b` saņem jaunu vērtību:

```
$ raku exercises/scalar-variables/swap.raku
BRĪDINĀJUMI par /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Bezjēdzīga "*" izmantošana izteiksmē "3 * $a" sink kontekstā (2. rinda)
Bezjēdzīga $a izmantošana sink kontekstā (2. rinda)
10, 40
```

{% include nav.html %}
