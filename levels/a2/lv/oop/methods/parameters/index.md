---
title: Metodes ar parametriem
translations_gpt:
---

{% include menu.html %}

Metodei var būt parametri, tāpat kā apakšprogrammai. Rakstiet tos apaļās iekavās aiz metodes nosaukuma:

```raku
class Account {
    has $.balance is rw = 0;

    method deposit($amount) {
        $.balance += $amount;
    }
}
```

Metodei `deposit` ir viens parametrs, `$amount`. Tā pieskaita šo summu objekta bilancei:

```raku
my $a = Account.new;
$a.deposit(100);
$a.deposit(50);
say $a.balance; # 150
```

Katrs izsaukums strādā ar vienu objektu. Tas ir objekts, uz kura jūs izsaucat metodi. Tāpēc viena metode var mainīt dažādus objektus. Viens objekts nemaina citus. Metodēm var būt pozicionāli un nosaukti parametri. Tām var būt arī noklusētās vērtības. Šeit darbojas arī viss pārējais no apakšprogrammu parakstiem.

{% include nav.html %}
