---
title: Classi
translations_gpt:
---

{% include menu.html %}

Finora hai usato solo i tipi che Raku ha già. Sono numeri, stringhe, array e così via. Con la _programmazione a oggetti_ puoi creare i tuoi tipi. Un tipo così si chiama _classe_. Un valore di questo tipo si chiama _oggetto_.

Per creare una classe, scrivi la parola chiave `class`. Dopo, scrivi un nome e un blocco:

```raku
class Dog {
}
```

Questa classe `Dog` per ora è vuota. Ma è già un tipo nuovo. Un oggetto di una classe si chiama anche _istanza_. `new` è un metodo. Per creare un'istanza, chiamalo sul nome della classe:

```raku
class Dog {
}

my $rex = Dog.new;
say $rex; # Dog.new
```

Ora nella variabile `$rex` c'è un oggetto `Dog`. Ogni chiamata a `new` crea un oggetto nuovo e separato:

```raku
my $rex = Dog.new;
my $fido = Dog.new;
```

`$rex` e `$fido` sono due cani diversi. La classe è ancora vuota, ma i cani sono diversi. Nelle prossime sezioni dai a una classe i suoi dati. Questi dati si chiamano _attributi_. Una classe riceve anche un suo comportamento, cioè delle azioni. Queste azioni si chiamano _metodi_. Il primo argomento guarda più da vicino una classe e le sue istanze. Mostra come sono diverse.

{% include nav.html %}
