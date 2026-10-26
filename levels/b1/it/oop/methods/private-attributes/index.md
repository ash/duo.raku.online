---
title: Attributi privati
translations_gpt:
---

{% include menu.html %}

Nella [sezione sugli attributi](/it/oop/attributes) abbiamo dichiarato ogni attributo con `$.`. Questo crea un accessore pubblico. Se invece dichiari un attributo con `$!`, è _privato_. Non ha accessore, e non lo puoi vedere dall'esterno dell'oggetto. Solo i metodi della classe stessa lo possono raggiungere. Lì lo scrivi come `$!name`.

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

Il segreto `$!code` è conservato dentro l'oggetto, ma non si mostra mai all'esterno. Non c'è nessun accessore `.code`. Quindi puoi lavorarci solo attraverso il metodo `unlocks`. La classe sceglie di offrire questo metodo. Se provi a leggere `$safe.code` o `$safe!code`, semplicemente fallisce.

Gli attributi privati sono utili per i dettagli interni. Il resto del programma non dovrebbe lavorare direttamente con questi dettagli.

{% include nav.html %}
