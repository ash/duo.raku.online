---
title: Avverbi di quoting
---

{% include menu.html %}

Puoi cambiare come funziona un costrutto di quoting. Per farlo, usi gli _avverbi_. Un costrutto di quoting ha diverse funzionalità. Per esempio, può interpolare gli scalari. Può eseguire il codice tra parentesi graffe. Può elaborare i backslash. Ogni funzionalità ha il suo avverbio. L'avverbio attiva o disattiva solo questa funzionalità. Così puoi partire da `q` o `Q`. Poi aggiungi esattamente le funzionalità che ti servono.

Ecco alcuni avverbi comuni:

* `:s` / `:scalar` — mette nella stringa i valori delle variabili scalari (`$x`)
* `:c` / `:closure` — esegue il codice in `{ … }` e mette il risultato nella stringa
* `:b` / `:backslash` — gestisce le sequenze di escape con backslash, come `\n`

Aggiungi un avverbio a `q`. Allora `q` riceve una funzionalità. Per esempio, fagli eseguire il codice, ma nient'altro:

```raku
say q/result: {3 * 4}/;   # result: {3 * 4}  — plain q leaves the block untouched
say q:c/result: {3 * 4}/; # result: 12        — :c runs the block
```

Con il semplice `q`, Raku stampa `{ 3 * 4 }` così com'è. Solo `:c` esegue il blocco. Poi Raku mette il risultato nella stringa. Una variabile come `$variable` resta comunque così com'è. Guarda i delimitatori qui: `/…/`. I delimitatori sono i caratteri intorno al testo. Puoi usare anche `{…}` come delimitatori. Non c'è nessun errore, perché il compilatore conta bene le parentesi graffe. Ma allora il `{ 3 * 4 }` interno è solo una parte del testo. Non è codice. Così `:c` non lo esegue, e resta così com'è. Il testo ha un blocco `{ … }`? Allora non usare `{…}` come delimitatori. Usa altri delimitatori. Così Raku esegue il codice tra le parentesi graffe. Puoi anche aggiungere a `Q` l'interpolazione degli scalari. Senza di essa, `Q` lascia tutto il testo così com'è:

```raku
my $name = 'Anna';
say Q:s{Hi, $name}; # Hi, Anna
```

Gli avverbi possono anche **disattivare** le funzionalità. Per farlo, scrivi un `!`. Qui usiamo `qq`, ma `$` resta un carattere normale:

```raku
my $price = 5;
say qq:!s{costs $price dollars}; # costs $price dollars
```

`qq` è come `Q` con tutti gli avverbi di interpolazione attivi. `q` è come `Q` con meno avverbi attivi. Con gli avverbi puoi scegliere ogni funzionalità tra questi due estremi.

{% include nav.html %}
