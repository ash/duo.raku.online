---
title: Metodes ar parametriem
translations_gpt:
---

{% include menu.html %}

Tāpat kā apakšprogramma, metode var ņemt parametrus. Jūs tos liekat iekavās aiz metodes nosaukuma:

```raku
class Account {
    has $.balance is rw = 0;

    method deposit($amount) {
        $.balance += $amount;
    }
}
```

Metode `deposit` ņem vienu parametru, `$amount`. Tā pieskaita šo summu objekta bilancei:

```raku
my $a = Account.new;
$a.deposit(100);
$a.deposit(50);
say $a.balance; # 150
```

Katrs izsaukums strādā ar objektu, uz kura tas tika izsaukts. Tāpēc viena un tā pati metode var atjaunināt dažādus objektus atsevišķi. Metodēm var būt pozicionāli un nosaukti parametri un noklusētās vērtības. Patiesībā tās var izmantot visu, ko jūs jau esat redzējuši apakšprogrammu parakstos.

{% include nav.html %}
