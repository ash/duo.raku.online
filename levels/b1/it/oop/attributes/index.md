---
title: Attributi
translations_gpt:
---

{% include menu.html %}

Una classe vuota non è molto utile. Perché un oggetto possa avere dati propri, dai alla classe degli _attributi_. Dichiari un attributo dentro la classe con la parola chiave `has`:

```raku
class Dog {
    has $.name;
    has $.age;
}
```

Ogni oggetto della classe ha la propria copia di questi attributi. Imposti i loro valori quando crei l'oggetto. Per farlo, passali a `new` come argomenti nominati:

```raku
class Dog {
    has $.name;
    has $.age;
}

my $rex = Dog.new(name => 'Rex', age => 3);
```

Il `$.` in `has $.name` fa due cose insieme. Dichiara un attributo e crea un metodo con lo stesso nome. Questo metodo si chiama _accessore_ e restituisce il valore dell'attributo:

```raku
say $rex.name; # Rex
say $rex.age;  # 3
```

Oggetti diversi conservano valori propri, che non dipendono l'uno dall'altro:

```raku
my $rex  = Dog.new(name => 'Rex',  age => 3);
my $fido = Dog.new(name => 'Fido', age => 5);

say $rex.name;  # Rex
say $fido.name; # Fido
```

I prossimi argomenti mostrano come rendere modificabili gli attributi. Mostrano anche come dare agli attributi dei valori predefiniti. C'è anche un modo per dichiarare attributi _privati_, che sono nascosti all'esterno. Ci torneremo quando avremo visto i metodi.

{% include nav.html %}
