---
title: Metodoj kun parametroj
translations_gpt:
---

{% include menu.html %}

Kiel subrutino, metodo povas preni parametrojn. Vi metas ilin en krampojn post la nomo de la metodo:

```raku
class Account {
    has $.balance is rw = 0;

    method deposit($amount) {
        $.balance += $amount;
    }
}
```

La metodo `deposit` prenas unu parametron, `$amount`. Ĝi aldonas ĉi tiun sumon al la saldo de la objekto:

```raku
my $a = Account.new;
$a.deposit(100);
$a.deposit(50);
say $a.balance; # 150
```

Ĉiu voko laboras sur la objekto, sur kiu ĝi estis vokata. Do la sama metodo povas ĝisdatigi malsamajn objektojn aparte. Metodoj povas havi poziciajn kaj nomitajn parametrojn kaj defaŭltajn valorojn. Fakte, ili povas uzi ĉion, kion vi jam vidis en la subskriboj de subrutinoj.

{% include nav.html %}
