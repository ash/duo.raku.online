---
title: Metodi con parametri
translations_gpt:
---

{% include menu.html %}

Come una subroutine, un metodo può prendere parametri. Li metti tra parentesi dopo il nome del metodo:

```raku
class Account {
    has $.balance is rw = 0;

    method deposit($amount) {
        $.balance += $amount;
    }
}
```

Il metodo `deposit` prende un parametro, `$amount`. Aggiunge questa somma al saldo dell'oggetto:

```raku
my $a = Account.new;
$a.deposit(100);
$a.deposit(50);
say $a.balance; # 150
```

Ogni chiamata lavora sull'oggetto su cui è stata fatta. Così lo stesso metodo può aggiornare oggetti diversi in modo separato. I metodi possono avere parametri posizionali e nominati e valori predefiniti. In effetti, possono usare tutto quello che hai già visto nelle firme delle subroutine.

{% include nav.html %}
