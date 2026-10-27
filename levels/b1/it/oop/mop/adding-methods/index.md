---
title: Aggiungere metodi a runtime
translations_gpt:
---

{% include menu.html %}

Puoi usare il MOP non solo per esaminare un tipo. Può anche **cambiare** un tipo mentre il programma gira. Il metametodo `.^add_method` aggiunge un nuovo metodo a una classe:

```raku
class Empty {
}

Empty.^add_method('greet', method { 'hi' });

say Empty.new.greet; # hi
```

La classe `Empty` non ha nessun metodo. Poi `Empty.^add_method('greet', …)` aggiunge un metodo di nome `greet`, che è dato come `method { … }` anonimo. Da quel momento, ogni oggetto `Empty` risponde a `.greet`. Funziona proprio come se lo avessi scritto nella classe.

Questa è vera metaprogrammazione. Diciamo al metaoggetto di `Empty` di far crescere un nuovo metodo. Lo stesso protocollo sta dietro a funzionalità che hai già usato. In teoria, funziona così. Quando scrivi `class`, `role`, `has` o `method`, il compilatore costruisce il tuo tipo per te. Lo fa con metodi MOP come `.^add_method` e `.^add_attribute`.

Diciamo «in teoria» perché questo è un modello del linguaggio. Non è una promessa su un compilatore particolare. Il sistema a oggetti è *definito* in termini del MOP. Ma una certa implementazione manda davvero ogni dichiarazione attraverso quei metametodi? E puoi vederla mentre lo fa? Lo decide ogni implementazione. Per lo stesso motivo, *chiamare* tu stesso questi metametodi dipende dall'implementazione. I compilatori possono offrire metametodi diversi, e il loro comportamento esatto può cambiare. Quindi il codice con `.^add_method` e metodi simili può funzionare in modo diverso su ogni Raku.

Aggiungere metodi a runtime è uno strumento potente, ma ti servirà di rado. La maggior parte dei programmi non lo usa mai. Ma è ciò che rende aperto il sistema a oggetti di Raku. Anche le regole delle classi sono scritte con il MOP, quindi puoi estenderle. Nel codice di tutti i giorni, la parte del MOP che userai davvero è l'ispezione dei tipi. Hai visto questi metametodi nell'argomento precedente.

{% include nav.html %}
