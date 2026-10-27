---
title: Aggiungere un ruolo a un oggetto
translations_gpt:
---

{% include menu.html %}

Non devi per forza mettere un ruolo dentro una classe. Puoi anche dare un ruolo a un oggetto che esiste già. Per questo, usa l'operatore `but`. Mescola il ruolo in un solo oggetto. Questo succede mentre il programma gira. Poi `but` restituisce un nuovo oggetto con il ruolo:

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

Solo `$loud` ha ricevuto il ruolo. La classe `Greeter` e tutti gli altri oggetti `Greeter` restano uguali. Quindi `$quiet` saluta ancora nel modo normale. A volte il ruolo e la classe hanno metodi con lo stesso nome. Allora vince la versione del ruolo. E `callsame` chiama l'altro metodo, che il ruolo sovrascrive. Qui è il `greet` originale di `Greeter`. Poi il suo risultato diventa maiuscolo.

Un oggetto può ricevere un ruolo in questo modo. Allora conta come un oggetto con questo ruolo:

```raku
say $quiet ~~ Loud; # False
say $loud  ~~ Loud; # True
```

`but` non cambia l'oggetto originale. Ti dà un nuovo oggetto. Forse vuoi cambiare l'oggetto stesso. Allora usa invece l'operatore `does`:

```raku
my $speaker = Greeter.new;
$speaker does Loud;
say $speaker.greet; # HELLO
```

Puoi mescolare ruoli in singoli oggetti. Così decidi per ogni oggetto quale comportamento in più riceve. Non ti serve una classe separata per ogni combinazione.

{% include nav.html %}
