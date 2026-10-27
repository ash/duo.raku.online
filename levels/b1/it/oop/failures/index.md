---
title: Guasti morbidi
translations_gpt:
---

{% include menu.html %}

Sollevare un'eccezione con `die` ferma tutto subito. A volte è troppo forte. Forse vuoi che una subroutine segnali che non ha potuto dare un risultato. Ma il chiamante deve decidere se questo è fatale. Per questo Raku ha i _fallimenti morbidi_, che crei con `fail`.

Quando una subroutine chiama `fail`, non solleva subito un'eccezione. Invece restituisce al chiamante un oggetto speciale `Failure`. Un `Failure` non è definito, quindi il chiamante può controllarlo in silenzio:

```raku
sub divide($a, $b) {
    fail 'cannot divide by zero' if $b == 0;
    return $a / $b;
}

say divide(10, 2);         # 5
say divide(10, 0).defined; # False
```

La chiamata riuscita restituisce `5`. La chiamata che fallisce restituisce un `Failure`, e `defined` dà `False` per questo oggetto. Quindi il chiamante può controllare il risultato prima di usarlo.

Perché un `Failure` si chiama _morbido_? Diventa una vera eccezione sollevata solo in un caso. Succede quando lo usi come valore senza controllarlo prima. Finché lo gestisci, per esempio controllando `defined`, resta silenzioso. Così una subroutine può segnalare un problema senza fermare tutto il programma.

## Lo hai già visto

Questo tipo di fallimento ritardato non viene solo da `fail`. Prima, in questa parte, hai incontrato la stessa idea due volte.

Una **divisione per zero** produce un valore in silenzio. Solleva un'eccezione solo quando usi davvero quel valore:

```raku
my $x = 1 / 0;   # no error yet
say $x;           # throws only here, when the value is used
```

Un **programma esterno che fallisce** restituisce un `Proc`. Solleva un'eccezione solo se lo butti via senza gestirlo. Se lo conservi e lo guardi, resta un valore silenzioso:

```raku
run 'sh', '-c', 'exit 1';   # the failing Proc is discarded, so this throws
```

In ogni caso un problema non ferma il programma nel momento in cui succede. Invece diventa un valore che puoi controllare. Diventa un'eccezione sollevata solo quando lo usi senza controllo o lo ignori. L'argomento [Non ogni errore è immediato](/it/oop/try/deferred-errors) mostra questi due esempi fianco a fianco.

{% include nav.html %}
