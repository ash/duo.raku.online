---
title: Aggiungere metodi a runtime
translations_gpt:
---

{% include menu.html %}

Il MOP non serve solo per guardare dentro i tipi. Può anche **cambiare** un tipo mentre il programma gira. Il metametodo `.^add_method` aggiunge un nuovo metodo a una classe:

```raku
class Empty {
}

Empty.^add_method('greet', method { 'hi' });

say Empty.new.greet; # hi
```

La classe `Empty` non ha nessun metodo. Poi `Empty.^add_method('greet', …)` le aggiunge un metodo. Il suo nome è `greet`. Il metodo stesso è un `method { … }` anonimo. Anonimo vuol dire che non ha un nome. Dopo, puoi chiamare `.greet` su ogni oggetto `Empty`. Funziona come un metodo scritto nella classe.

Questa è vera metaprogrammazione. Metaprogrammazione vuol dire codice che lavora con il codice. Qui diciamo al metaoggetto di `Empty` di far crescere un nuovo metodo. Lo stesso protocollo sta dietro a cose che usi già. Ecco l'idea. Scrivi `class`, `role`, `has` o `method`. Poi il compilatore costruisce il tuo tipo per te. Usa metodi MOP come `.^add_method` e `.^add_attribute`.

Diciamo «l'idea» per un motivo. Questo è un modello del linguaggio. Non è una promessa su un compilatore preciso. Il sistema a oggetti è *definito* attraverso il MOP. Un'implementazione è un compilatore per Raku. Manda davvero ogni dichiarazione attraverso questi metametodi? E tu puoi vederlo? Ogni implementazione lo decide da sola. Puoi anche *chiamare* tu stesso questi metametodi. Per lo stesso motivo, il risultato dipende dall'implementazione. I compilatori possono darti metametodi diversi. Questi metodi possono anche funzionare in modi diversi. Il codice può usare `.^add_method` e metodi simili. Un codice così può non girare allo stesso modo su ogni Raku.

Puoi aggiungere metodi mentre il programma gira. Questo è uno strumento potente. Ma ti serve di rado. La maggior parte dei programmi non lo usa mai. Ma rende aperto il sistema a oggetti di Raku. Anche le regole delle classi sono scritte con il MOP. Quindi puoi aggiungere cose a queste regole. Per il codice di tutti i giorni, ti serve un'altra parte del MOP. L'hai vista nell'argomento precedente. Sono i metametodi che guardano dentro i tipi.

{% include nav.html %}
