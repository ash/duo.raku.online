---
title: Attributi in lettura e scrittura
translations_gpt:
---

{% include menu.html %}

Normalmente l'accessore di `has $.name` è di _sola lettura_. Il costruttore dà all'attributo il suo valore. Il costruttore è il metodo che crea l'oggetto, qui `new`. Dopo, il codice fuori dall'oggetto può leggere il valore. Ma non lo può cambiare. Prova ad assegnargli un nuovo valore. Questo dà un errore:

```raku
class Dog {
    has $.name;
}

my $rex = Dog.new(name => 'Rex');
$rex.name = 'Max';
```

Il programma si ferma con questo errore:

```
Cannot modify an immutable Str (Rex)
```

Vuoi cambiare il valore attraverso l'accessore? Allora segna l'attributo con il tratto `is rw`:

```raku
class Dog {
    has $.name is rw;
}

my $rex = Dog.new(name => 'Rex');
$rex.name = 'Max';
say $rex.name; # Max
```

Ora l'accessore restituisce un contenitore in cui puoi scrivere. Così l'assegnamento funziona. Il `name` dell'oggetto ora è `Max`.

{% include nav.html %}
