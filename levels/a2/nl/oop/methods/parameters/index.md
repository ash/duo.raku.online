---
title: Methoden met parameters
translations_gpt:
---

{% include menu.html %}

Een methode kan parameters hebben, net als een subroutine. Schrijf ze tussen ronde haakjes na de naam van de methode:

```raku
class Account {
    has $.balance is rw = 0;

    method deposit($amount) {
        $.balance += $amount;
    }
}
```

De methode `deposit` heeft één parameter, `$amount`. Ze telt dit bedrag op bij het saldo van het object:

```raku
my $a = Account.new;
$a.deposit(100);
$a.deposit(50);
say $a.balance; # 150
```

Elke aanroep werkt op één object. Dat is het object waarop je de methode aanroept. Dus kan één methode verschillende objecten veranderen. Het ene object verandert de andere niet. Methoden kunnen positionele en benoemde parameters hebben. Ze kunnen ook standaardwaarden hebben. Al het andere uit de signaturen van subroutines werkt hier ook.

{% include nav.html %}
