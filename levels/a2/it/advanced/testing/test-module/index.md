---
title: Il modulo Test
translations_gpt:
---

{% include menu.html %}

Per avere gli strumenti per i test, scrivi `use Test`. Il controllo più semplice è `ok`. Ha successo quando la sua condizione è vera. Ogni controllo può avere anche una descrizione:

```raku
use Test;

ok 1 == 1, 'one equals one';
ok 2 > 1,  'two is greater';

done-testing;
```

Esegui questo programma. Stampa il risultato nel formato standard per i test. Questo formato si chiama _TAP_:

```
ok 1 - one equals one
ok 2 - two is greater
1..2
```

Per ogni controllo che ha successo, vedi `ok` con il suo numero e la descrizione. Un controllo che fallisce mostra `not ok`. L'ultima riga, `1..2`, è il _piano_. Dice quanti test ha eseguito il programma. La chiamata a `done-testing` alla fine stampa questo piano in automatico.

A volte ti aspetti un certo valore. Allora `is` è più chiaro di `ok`. Se il test fallisce, `is` mostra due valori. Mostra il valore che ti aspetti e il valore che ottieni:

```raku
use Test;

is 2 + 2, 4, 'addition works';

done-testing;
```

Questo stampa `ok 1 - addition works`. Ora vediamo come `is` segnala un fallimento. Dai a `is` un valore atteso sbagliato:

```raku
use Test;

is 2 + 2, 5, 'addition works';

done-testing;
```

Ora il controllo fallisce. L'output mostra esattamente cosa non va:

```
not ok 1 - addition works
# Failed test 'addition works'
# at test.raku line 3
# expected: '5'
#      got: '4'
1..1
# You failed 1 test of 1
```

La riga `not ok` mostra il fallimento. Sotto, altre righe spiegano il problema. Mostrano il valore che ti aspetti e il valore che ottieni. Quindi, quando ti serve un certo valore, `is` aiuta più di `ok` da solo.

Con `ok`, `is` e `done-testing` puoi già scrivere un file di test utile. Il prossimo argomento mostra [gli altri confronti](/it/advanced/testing/comparisons).

{% include nav.html %}
