---
title: Methoden met parameters
translations_gpt:
---

{% include menu.html %}

Net als een subroutine kan een methode parameters aannemen. Je zet ze tussen haakjes achter de naam van de methode:

```raku
class Account {
    has $.balance is rw = 0;

    method deposit($amount) {
        $.balance += $amount;
    }
}
```

De methode `deposit` neemt één parameter aan, `$amount`. Ze telt dit bedrag op bij het saldo van het object:

```raku
my $a = Account.new;
$a.deposit(100);
$a.deposit(50);
say $a.balance; # 150
```

Elke aanroep werkt op het object waarop hij is aangeroepen. Dus kan dezelfde methode verschillende objecten apart bijwerken. Methoden kunnen positionele en benoemde parameters en standaardwaarden hebben. Ze kunnen zelfs alles gebruiken wat je al in de signaturen van subroutines gezien hebt.

{% include nav.html %}
