---
title: 'Risinājums: Vērtību apmaiņa'
---

{% include menu.html %}

Šajā programmā mēs izmantojam Raku sintakses daļas no sadaļas par [skalārajiem mainīgajiem](/lv/essentials/scalar-variables).

## Kods

```raku
my ($a, $b) = 10, 20;
($a, $b) = $b, $a;
say "$a, $b";
```

🦋 Jūs varat atrast pirmkodu failā [swap.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/swap.raku).

## Izvade

Palaidiet programmu un pārbaudiet, vai tā izdrukā vērtības citā secībā.

```console
$ raku exercises/scalar-variables/swap.raku
20, 10
```

## Komentāri

Šai programmai ir trīs soļi. Tā izveido mainīgos un piešķir tiem vērtības, samaina vērtības vietām un izdrukā tās. Katrs solis izmanto abus mainīgos vienā un tajā pašā paziņojumā. Visinteresantākais ir tas, kā mainīgie apmainās ar vērtībām:

```raku
($a, $b) = $b, $a;
```

Iekavas kreisajā pusē ir nepieciešamas. Bet jūs varat tās pievienot arī labajā pusē:

```raku
($a, $b) = ($b, $a);
```

Kas notiek, ja jūs izlaižat iekavas?

```raku
$a, $b = $b, $a;
```

Šajā gadījumā Raku jūs brīdina, ka `$a` labajā pusē netiek izmantots:

```
$ raku exercises/scalar-variables/swap.raku
BRĪDINĀJUMI par /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Bezjēdzīga $a izmantošana sink kontekstā (2. rinda, 2. rinda)
10, 20
```

Patiesībā šī rinda dara to pašu, ko bezjēdzīgā piešķiršana `$b = $b`. To var viegli redzēt, ja jūs nomaināt vērtības labajā pusē, piemēram:

```raku
$a, $b = 2 * $b, 3 * $a;
```

Šoreiz brīdinājumu ir vēl vairāk. Bet jūs varat arī redzēt, ka tikai `$b` mainīja savu vērtību:

```
$ raku exercises/scalar-variables/swap.raku
BRĪDINĀJUMI par /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Bezjēdzīga "*" izmantošana izteiksmē "3 * $a" sink kontekstā (2. rinda)
Bezjēdzīga $a izmantošana sink kontekstā (2. rinda)
10, 40
```

{% include nav.html %}
