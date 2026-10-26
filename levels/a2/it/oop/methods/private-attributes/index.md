---
title: Attributi privati
translations_gpt:
---

{% include menu.html %}

Nella [sezione sugli attributi](/it/oop/attributes), ogni attributo aveva `$.` nel nome. `$.` crea un accessore pubblico. Chiunque fuori dall'oggetto lo può usare. Ma puoi anche scrivere `$!` al suo posto. Allora l'attributo è _privato_. Non ha accessore. Il codice fuori dall'oggetto non lo vede. Solo i metodi della classe lo possono usare. Lì lo scrivi come `$!name`.

```raku
class Safe {
    has $!code = 4321;

    method unlocks($attempt) {
        return $attempt == $!code;
    }
}

my $safe = Safe.new;
say $safe.unlocks(4321); # True
say $safe.unlocks(1111); # False
```

Il segreto `$!code` è dentro l'oggetto. Ma nessuno fuori lo può vedere. Non c'è un accessore `.code`. L'unico modo per usare il codice è il metodo `unlocks`. La classe ti dà questo metodo apposta. Leggere `$safe.code` o `$safe!code` semplicemente non funziona.

Gli attributi privati vanno bene per i dettagli dentro l'oggetto. Il resto del programma non deve toccarli direttamente.

{% include nav.html %}
