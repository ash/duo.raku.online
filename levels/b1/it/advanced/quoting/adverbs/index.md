---
title: Avverbi di quoting
---

{% include menu.html %}

Puoi regolare il comportamento di un costrutto di quoting con gli _avverbi_. Ogni funzionalità di quoting ha il suo avverbio, che attiva o disattiva solo quella funzionalità. Le funzionalità sono l'interpolazione degli scalari, l'esecuzione delle closure (codice tra parentesi graffe) e l'elaborazione dei backslash. Così puoi partire da `q` o `Q`. Poi aggiungi esattamente le funzionalità che ti servono.

Alcuni avverbi comuni:

* `:s` / `:scalar` — interpola le variabili scalari (`$x`)
* `:c` / `:closure` — interpola il codice in `{ … }`
* `:b` / `:backslash` — gestisce le sequenze di escape con backslash come `\n`

Aggiungi un avverbio a `q` per attivare una sola funzionalità. Per esempio, permetti il codice tra parentesi graffe ma nient'altro:

```raku
say q/result: {3 * 4}/;   # result: {3 * 4}  — plain q leaves the block untouched
say q:c/result: {3 * 4}/; # result: 12        — :c runs the block
```

Con il semplice `q`, il `{ 3 * 4 }` viene stampato esattamente come è scritto. Solo `:c` fa eseguire il blocco e ne inserisce il valore. Una variabile come `$variable`, però, resterebbe comunque così com'è. Nota i delimitatori `/…/` qui. Potresti usare anche `{…}` come delimitatori, e il codice verrebbe compilato lo stesso. Il compilatore conta correttamente le parentesi graffe annidate. Ma allora il `{ 3 * 4 }` interno sarebbe solo una parte del testo, non una closure. Quindi `:c` lo lascerebbe così com'è. Perciò, se il testo contiene un blocco `{ … }`, scegli un delimitatore diverso da `{…}`. Allora la closure viene davvero eseguita. Puoi anche aggiungere l'interpolazione degli scalari a `Q`, che di solito non cambia niente:

```raku
my $name = 'Anna';
say Q:s{Hi, $name}; # Hi, Anna
```

Con un `!`, gli avverbi possono anche **disattivare** le funzionalità. Ecco come usare `qq` ma lasciare `$` così com'è:

```raku
my $price = 5;
say qq:!s{costs $price dollars}; # costs $price dollars
```

`qq` è uguale a `Q` con tutti gli avverbi di interpolazione attivati. `q` è uguale a `Q` con un gruppo più piccolo di avverbi. Tra questi due estremi, gli avverbi ti permettono di controllare ogni dettaglio.

{% include nav.html %}
