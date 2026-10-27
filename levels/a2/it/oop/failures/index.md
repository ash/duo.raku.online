---
title: Guasti morbidi
translations_gpt:
---

{% include menu.html %}

Un'eccezione di `die` ferma tutto subito. A volte questo è troppo. Forse una subroutine non può dare un risultato. Deve segnalare questo problema. Ma il chiamante deve decidere se il programma si ferma. Il chiamante è il codice che ha chiamato la subroutine. Per questo caso Raku ha i _fallimenti morbidi_. Li crei con `fail`.

Una subroutine può chiamare `fail`. Allora non solleva subito un'eccezione. Invece restituisce al chiamante un oggetto speciale `Failure`. Un `Failure` è un valore con dentro un errore. Non è definito. Quindi il chiamante può controllarlo in silenzio:

```raku
sub divide($a, $b) {
    fail 'cannot divide by zero' if $b == 0;
    return $a / $b;
}

say divide(10, 2);         # 5
say divide(10, 0).defined; # False
```

La prima chiamata funziona e restituisce `5`. La seconda chiamata fallisce. Restituisce un `Failure`. Per questo oggetto `defined` dà `False`. Quindi il chiamante può controllare il risultato prima di usarlo.

Perché un `Failure` si chiama _morbido_? Diventa una vera eccezione sollevata solo in un caso. È quando lo usi come valore senza un controllo. Ma puoi gestirlo, per esempio con un test su `defined`. Allora resta silenzioso. Così una subroutine può segnalare un problema. Il programma intero non deve per forza fermarsi.

## Questo lo conosci già

Questo tipo di fallimento è rimandato a dopo. Non solo `fail` funziona così. Prima, in questa parte, hai visto la stessa idea due volte.

Una **divisione per zero** crea un valore in silenzio. Solleva un'eccezione solo quando usi davvero il valore:

```raku
my $x = 1 / 0;   # no error yet
say $x;           # throws only here, when the value is used
```

Un **programma esterno che fallisce** restituisce un `Proc`. Solleva un'eccezione solo in un caso. Succede quando butti via il `Proc` senza gestirlo. Conserva il `Proc` e guardalo. Allora resta un valore silenzioso:

```raku
run 'sh', '-c', 'exit 1';   # the failing Proc is discarded, so this throws
```

In ogni caso un problema non ferma subito il programma. Diventa un valore. Puoi controllare questo valore. Diventa un'eccezione sollevata solo in due casi. Lo usi senza un controllo, oppure lo ignori. L'argomento [Non ogni errore è immediato](/it/oop/try/deferred-errors) mostra i due esempi insieme.

{% include nav.html %}
