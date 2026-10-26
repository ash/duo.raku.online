---
title: Classi
translations_gpt:
---

{% include menu.html %}

Finora tutti i tipi di dati che hai usato erano già presenti in Raku. Erano numeri, stringhe, array e così via. Con la _programmazione a oggetti_ puoi definire tipi tuoi, che si chiamano _classi_. Puoi anche creare valori di questi tipi, che si chiamano _oggetti_.

Per definire una classe, scrivi la parola chiave `class`, poi un nome e un blocco:

```raku
class Dog {
}
```

Questa classe `Dog` è ancora vuota, ma è già un tipo nuovo. Un oggetto di una classe si chiama anche _istanza_. Per crearne una, chiama il metodo `new` sul nome della classe:

```raku
class Dog {
}

my $rex = Dog.new;
say $rex; # Dog.new
```

Ora `$rex` contiene un oggetto `Dog`. Ogni volta che chiami `new`, ottieni un oggetto nuovo e separato:

```raku
my $rex = Dog.new;
my $fido = Dog.new;
```

`$rex` e `$fido` sono due cani diversi, anche se la classe è ancora vuota. Nelle prossime sezioni darai a una classe dati propri, chiamati _attributi_. Le darai anche un comportamento proprio, fatto di _metodi_. Il primo argomento guarda più da vicino come una classe è diversa dalle sue istanze.

{% include nav.html %}
