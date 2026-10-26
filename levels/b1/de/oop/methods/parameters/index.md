---
title: Methoden mit Parametern
translations_gpt:
---

{% include menu.html %}

Wie eine Subroutine kann eine Methode Parameter nehmen. Sie schreiben sie in Klammern hinter den Namen der Methode:

```raku
class Account {
    has $.balance is rw = 0;

    method deposit($amount) {
        $.balance += $amount;
    }
}
```

Die Methode `deposit` nimmt einen Parameter, `$amount`. Sie addiert diesen Betrag zum Kontostand des Objekts:

```raku
my $a = Account.new;
$a.deposit(100);
$a.deposit(50);
say $a.balance; # 150
```

Jeder Aufruf wirkt auf das Objekt, auf dem er aufgerufen wurde. Deshalb kann dieselbe Methode verschiedene Objekte getrennt voneinander ändern. Methoden können positionale und benannte Parameter und Standardwerte haben. Tatsächlich können sie alles benutzen, was Sie schon aus Subroutinen-Signaturen kennen.

{% include nav.html %}
