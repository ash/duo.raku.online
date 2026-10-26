---
title: Attributi
translations_gpt:
---

{% include menu.html %}

Una classe vuota non è molto utile. Un oggetto ha bisogno di dati propri. Per questo dai alla classe degli _attributi_. Un attributo è un dato dentro un oggetto. Per creare un attributo, scrivi la parola chiave `has` dentro la classe:

```raku
class Dog {
    has $.name;
    has $.age;
}
```

Ogni oggetto riceve la sua copia di questi attributi. Dai loro i valori quando crei l'oggetto. Passa i valori a `new` come argomenti nominati:

```raku
class Dog {
    has $.name;
    has $.age;
}

my $rex = Dog.new(name => 'Rex', age => 3);
```

Guarda `$.` in `has $.name`. Fa due cose. Primo, crea un attributo. Secondo, crea un metodo con lo stesso nome. Questo metodo restituisce il valore dell'attributo. Un metodo così si chiama _accessore_:

```raku
say $rex.name; # Rex
say $rex.age;  # 3
```

Oggetti diversi conservano i propri valori. Non li condividono:

```raku
my $rex  = Dog.new(name => 'Rex',  age => 3);
my $fido = Dog.new(name => 'Fido', age => 5);

say $rex.name;  # Rex
say $fido.name; # Fido
```

I prossimi argomenti mostrano due cose. Prima crei attributi che puoi cambiare. Poi dai agli attributi dei valori predefiniti. C'è anche un modo per creare attributi _privati_. Il codice fuori dall'oggetto non li vede. Ci torniamo dopo i metodi.

{% include nav.html %}
