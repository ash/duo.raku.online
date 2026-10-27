---
title: Aggiungere un ruolo a un oggetto
translations_gpt:
---

{% include menu.html %}

Un ruolo non deve per forza essere incorporato in una classe. Puoi darlo anche a un oggetto che esiste già, con l'operatore `but`. Mescola il ruolo in un singolo oggetto a runtime. Poi restituisce un nuovo oggetto che ha il ruolo:

```raku
role Loud {
    method greet {
        callsame().uc;
    }
}

class Greeter {
    method greet {
        'Hello';
    }
}

my $quiet = Greeter.new;
my $loud  = Greeter.new but Loud;

say $quiet.greet; # Hello
say $loud.greet;  # HELLO
```

Solo `$loud` ha ricevuto il ruolo. La classe `Greeter` e tutti gli altri oggetti `Greeter` restano come prima. Quindi `$quiet` saluta ancora nel modo normale. A volte il ruolo e la classe definiscono entrambi un metodo con lo stesso nome. In questo caso vince la versione del ruolo. E `callsame` chiama il metodo che il ruolo ha sovrascritto. Qui è il `greet` originale di `Greeter`. Il suo risultato viene poi reso maiuscolo.

Un oggetto in cui è mescolato un ruolo conta come un oggetto con quel ruolo:

```raku
say $quiet ~~ Loud; # False
say $loud  ~~ Loud; # True
```

`but` lascia l'oggetto originale com'era e te ne dà uno nuovo. Se vuoi cambiare proprio un oggetto esistente, usa invece l'operatore `does`:

```raku
my $speaker = Greeter.new;
$speaker does Loud;
say $speaker.greet; # HELLO
```

Quando mescoli ruoli in singoli oggetti, decidi quale comportamento in più riceve ogni oggetto. Non devi definire una classe separata per ogni combinazione.

{% include nav.html %}
