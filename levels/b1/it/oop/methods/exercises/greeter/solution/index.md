---
title: 'Soluzione: Una parola rovesciata'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Il metodo `reversed` prende il `text` dell'oggetto attraverso il suo accessore, `$.text`. Poi chiama su di esso il metodo incorporato `flip`, che rovescia la stringa.

1. Il metodo viene chiamato direttamente sul nuovo oggetto `Word`. Nell'oggetto non viene salvato niente. `reversed` calcola solo un nuovo valore dall'attributo e lo restituisce.

1. Nota che dentro la classe non ti serve l'accessore. Puoi leggere la variabile direttamente:

```raku
    method reversed {
        $!text.flip;
    }
```

{% include nav.html %}
