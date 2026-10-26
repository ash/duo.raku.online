---
title: Chiamate con i due punti
translations_gpt:
---

{% include menu.html %}

Di solito gli argomenti di un metodo o di una subroutine sono tra parentesi: `@a.grep(* > 5)`. Raku ha un secondo modo. Metti i **due punti** dopo il nome. Tutto quello che viene dopo i due punti diventa la lista degli argomenti. Non ti serve nessuna parentesi:

```raku
say (1..10).grep: * %% 2; # (2 4 6 8 10)
```

I due punti in `grep:` fanno lo stesso lavoro delle parentesi. `(1..10).grep: * %% 2` significa esattamente la stessa cosa di `(1..10).grep(* %% 2)`. Puoi usare l'una o l'altra forma:

```raku
say <a b c>.join('-'); # a-b-c
say <a b c>.join: '-'; # a-b-c
```

La forma con i due punti è più comoda con alcuni metodi. Questi metodi prendono un **blocco** o un'espressione [Whatever](/it/advanced/whatever). I due punti tolgono un livello di parentesi. Confronta:

```raku
my @a = 3, 1, 2;

say @a.sort({ $^b <=> $^a }); # parentesi attorno al blocco
say @a.sort: { $^b <=> $^a }; # due punti — nessuna parentesi di chiusura da abbinare
```

Entrambe le righe stampano `(3 2 1)`. Ma la versione con i due punti si legge più facilmente. Questo vale ancora di più per un blocco lungo.

Conosci già le chiamate senza parentesi. Le usi con gli operatori di lista, come `say 1, 2, 3`. Lì `say` prende come argomenti tutto quello che viene dopo. La forma con i due punti è la stessa idea per i metodi. Ricorda una regola. La forma con i due punti prende il **resto dell'istruzione** come argomenti. Quindi deve stare alla **fine** di una catena di chiamate. Per questo `('a' .. 'z')».uc».ord.grep: 60 < * < 70` funziona. `grep` è l'ultima chiamata. Dopo questa chiamata non c'è niente nella catena. Devi chiamare altri metodi? Allora usa la forma con le parentesi. Oppure raggruppa con le parentesi le parti di tutta l'espressione. Così il codice è chiaro:

```raku
say (('a' .. 'z')».uc».ord.grep: 60 < * < 70)».chr # (A B C D E)
```

Fai attenzione a una cosa. Non usare insieme i due punti **e** le parentesi, come in `.grep:( … )`. In Raku, `:( … )` significa un'altra cosa. È una firma, scritta come valore. Quindi Raku non riesce a leggere questo codice. Usa `.grep( … )` oppure `.grep: …`. Usa una delle due forme, non entrambe.

{% include nav.html %}
