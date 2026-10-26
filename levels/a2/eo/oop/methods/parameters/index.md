---
title: Metodoj kun parametroj
translations_gpt:
---

{% include menu.html %}

Metodo povas havi parametrojn, kiel subrutino. Skribu ilin en rondaj krampoj post la nomo de la metodo:

```raku
class Account {
    has $.balance is rw = 0;

    method deposit($amount) {
        $.balance += $amount;
    }
}
```

La metodo `deposit` havas unu parametron, `$amount`. Ĝi aldonas ĉi tiun sumon al la saldo de la objekto:

```raku
my $a = Account.new;
$a.deposit(100);
$a.deposit(50);
say $a.balance; # 150
```

Ĉiu voko laboras sur unu objekto. Ĝi estas la objekto, sur kiu vi vokas la metodon. Do unu metodo povas ŝanĝi malsamajn objektojn. Unu objekto ne ŝanĝas la aliajn. Metodoj povas havi poziciajn kaj nomitajn parametrojn. Ili povas havi ankaŭ defaŭltajn valorojn. Ĉio alia el la subskriboj de subrutinoj ankaŭ funkcias ĉi tie.

{% include nav.html %}
