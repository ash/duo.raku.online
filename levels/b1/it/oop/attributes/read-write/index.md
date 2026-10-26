---
title: Attributi in lettura e scrittura
translations_gpt:
---

{% include menu.html %}

Normalmente l'accessore che `has $.name` crea è di _sola lettura_. Il costruttore, `new`, imposta il valore quando crea l'oggetto. Dopo, il codice fuori dall'oggetto può leggere il valore ma non può cambiarlo. Assegnargli un valore è un errore:

```raku
class Dog {
    has $.name;
}

my $rex = Dog.new(name => 'Rex');
$rex.name = 'Max';
```

Il programma si ferma con questo messaggio:

```
Cannot modify an immutable Str (Rex)
```

Vuoi cambiare il valore attraverso l'accessore? Allora contrassegna l'attributo con il tratto `is rw`:

```raku
class Dog {
    has $.name is rw;
}

my $rex = Dog.new(name => 'Rex');
$rex.name = 'Max';
say $rex.name; # Max
```

Ora l'accessore restituisce un contenitore scrivibile. Così l'assegnamento funziona, e il `name` dell'oggetto diventa `Max`.

{% include nav.html %}
