---
title: sink e quietly
translations_gpt:
---

{% include menu.html %}

Altri due prefissi servono a eseguire codice per i suoi effetti, non per il suo valore.

Il prefisso `sink` esegue qualcosa in _contesto sink_, cioè solo per i suoi effetti collaterali. Il risultato viene buttato via. Questo è utile quando volete obbligare un'operazione lazy a partire:

```raku
sink (1..3).map({ print "$_ " });
print "\n"; # 1 2 3
```

Qui il `map` viene eseguito solo per la stampa che fa. `sink` fa in modo che venga eseguito davvero, e poi butta via la lista che ne risulta. Se niente lo obbliga, un `map` lazy potrebbe non essere eseguito affatto. Questo può succedere quando il suo risultato non viene mai usato.

Il prefisso `quietly` esegue un blocco con i suoi **avvisi spenti**. Il codice che di solito stampa un avviso sul flusso di errore resta in silenzio:

```raku
my $value;
quietly {
    say $value + 1; # 1, with no "uninitialized value" warning
}
```

Sommare `1` a un `$value` non definito di solito dà un avviso su un valore non inizializzato. Dentro `quietly`, questo avviso viene nascosto. Usatelo quando sapete che un certo codice dà un avviso e non volete il rumore. Ma usatelo raramente, perché gli avvisi di solito indicano un errore vero.

{% include nav.html %}
