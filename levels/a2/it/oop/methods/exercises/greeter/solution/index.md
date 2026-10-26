---
title: 'Soluzione: Una parola rovesciata'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
class Word {
    has $.text;

    method reversed {
        $.text.flip;
    }
}

say Word.new(text => 'Raku').reversed;
```

🦋 Trova il programma nel file [greeter.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/greeter.raku).

## Output

```
ukaR
```

## Commenti

1. Il metodo `reversed` prende il `text` dell'oggetto. Per questo usa l'accessore `$.text`. Poi chiama su di esso il metodo incorporato `flip`. `flip` restituisce la stringa al contrario.

1. Il programma chiama il metodo direttamente sul nuovo oggetto `Word`. Il metodo non salva niente. `reversed` crea solo un nuovo valore dall'attributo e lo restituisce.

1. Dentro la classe puoi anche leggere la variabile direttamente. Per questo non ti serve l'accessore:

```raku
    method reversed {
        $!text.flip;
    }
```

{% include nav.html %}
