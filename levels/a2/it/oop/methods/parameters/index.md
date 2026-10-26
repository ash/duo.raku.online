---
title: Metodi con parametri
translations_gpt:
---

{% include menu.html %}

Un metodo può avere parametri, come una subroutine. Scrivili tra parentesi tonde dopo il nome del metodo:

```raku
class Account {
    has $.balance is rw = 0;

    method deposit($amount) {
        $.balance += $amount;
    }
}
```

Il metodo `deposit` ha un parametro, `$amount`. Aggiunge questa somma al saldo dell'oggetto:

```raku
my $a = Account.new;
$a.deposit(100);
$a.deposit(50);
say $a.balance; # 150
```

Ogni chiamata lavora su un oggetto. È l'oggetto su cui chiami il metodo. Così un metodo può cambiare oggetti diversi. Un oggetto non cambia gli altri. I metodi possono avere parametri posizionali e nominati. Possono avere anche valori predefiniti. Anche tutto il resto delle firme delle subroutine funziona qui.

{% include nav.html %}
