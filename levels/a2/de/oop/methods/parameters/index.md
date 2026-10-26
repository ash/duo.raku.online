---
title: Methoden mit Parametern
translations_gpt:
---

{% include menu.html %}

Eine Methode kann Parameter haben, wie eine Subroutine. Schreiben Sie sie in runden Klammern hinter den Namen der Methode:

```raku
class Account {
    has $.balance is rw = 0;

    method deposit($amount) {
        $.balance += $amount;
    }
}
```

Die Methode `deposit` hat einen Parameter, `$amount`. Sie addiert diesen Betrag zum Kontostand des Objekts:

```raku
my $a = Account.new;
$a.deposit(100);
$a.deposit(50);
say $a.balance; # 150
```

Jeder Aufruf wirkt auf ein Objekt. Es ist das Objekt, auf dem Sie die Methode aufrufen. So kann eine Methode verschiedene Objekte ändern. Ein Objekt ändert die anderen nicht. Methoden können positionale und benannte Parameter haben. Sie können auch Standardwerte haben. Alles andere aus Subroutinen-Signaturen funktioniert hier auch.

{% include nav.html %}
