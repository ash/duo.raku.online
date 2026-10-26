---
title: Chiamate con i due punti
translations_gpt:
---

{% include menu.html %}

Quando chiami un metodo o una subroutine, di solito metti i suoi argomenti tra parentesi: `@a.grep(* > 5)`. Raku ha anche una seconda forma. Metti i **due punti** dopo il nome. Allora tutto quello che segue diventa la lista degli argomenti. Non serve nessuna parentesi:

```raku
say (1..10).grep: * %% 2; # (2 4 6 8 10)
```

I due punti in `grep:` fanno lo stesso lavoro delle parentesi. Quindi `(1..10).grep: * %% 2` significa esattamente `(1..10).grep(* %% 2)`. Puoi sempre usare una forma al posto dell'altra:

```raku
say <a b c>.join('-'); # a-b-c
say <a b c>.join: '-'; # a-b-c
```

La forma con i due punti è più comoda con i metodi che prendono un **blocco** o un'espressione [Whatever](/it/advanced/whatever). Questo perché toglie un livello di parentesi dentro le parentesi. Confronta:

```raku
my @a = 3, 1, 2;

say @a.sort({ $^b <=> $^a }); # parentesi attorno al blocco
say @a.sort: { $^b <=> $^a }; # due punti — nessuna parentesi di chiusura da abbinare
```

Entrambe le righe stampano `(3 2 1)`, ma la versione con i due punti è più facile da leggere. Questo vale soprattutto quando il blocco è lungo.

Usi già le chiamate senza parentesi con gli operatori di lista, come `say 1, 2, 3`. Lì `say` prende come argomenti tutto quello che lo segue. La forma con i due punti è la stessa cosa per le chiamate ai metodi. C'è una regola da ricordare. La forma con i due punti prende il **resto dell'istruzione** come argomenti. Quindi deve venire alla **fine** di una catena di chiamate. Ecco perché `('a' .. 'z')».uc».ord.grep: 60 < * < 70` funziona. Qui `grep` è l'ultima chiamata, e dopo di essa non c'è altro nella catena. Se devi chiamare altri metodi, usa invece la forma con le parentesi. Oppure raggruppa le parti di tutta l'espressione per renderla chiara:

```raku
say (('a' .. 'z')».uc».ord.grep: 60 < * < 70)».chr # (A B C D E)
```

C'è una cosa a cui fare attenzione. Non usare insieme i due punti **e** le parentesi, come in `.grep:( … )`. Questa scrittura entra in conflitto con `:( … )`, la sintassi per un letterale di firma. Quindi Raku non riesce a leggere il codice. Usa `.grep( … )` oppure `.grep: …`. Usa l'una o l'altra, non entrambe.

{% include nav.html %}
