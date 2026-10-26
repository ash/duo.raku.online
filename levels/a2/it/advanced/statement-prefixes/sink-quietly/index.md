---
title: sink e quietly
translations_gpt:
---

{% include menu.html %}

Ci sono altri due prefissi. Eseguono il codice per quello che fa. Il valore del codice non è importante.

Il prefisso `sink` esegue il codice in _contesto sink_. Il codice gira solo per i suoi effetti collaterali. Raku butta via il risultato. Questo è utile con un'operazione lazy. Con `sink` la fate partire:

```raku
sink (1..3).map({ print "$_ " });
print "\n"; # 1 2 3
```

Qui eseguiamo il `map` solo per quello che stampa. `sink` fa in modo che parta davvero. Poi `sink` butta via la lista del `map`. Se niente lo obbliga, un `map` lazy può non partire per niente. Questo può succedere quando nessuno usa il suo risultato.

Il prefisso `quietly` esegue un blocco e **nasconde i suoi avvisi**. Un certo codice di solito stampa un avviso sul flusso di errore. Dentro `quietly`, questo codice resta in silenzio:

```raku
my $value;
quietly {
    say $value + 1; # 1, with no "uninitialized value" warning
}
```

Di solito Raku mostra un avviso quando sommate `1` a un `$value` non definito. L'avviso parla di un “uninitialized value”. Dentro `quietly`, questo avviso è nascosto. A volte sapete che il vostro codice dà un avviso. Non volete questo rumore. Allora usate `quietly`. Ma non usatelo spesso. Un avviso di solito indica un errore vero.

{% include nav.html %}
