---
title: Il modulo Test
translations_gpt:
---

{% include menu.html %}

Carichi gli strumenti di test con `use Test`. Il controllo più semplice è `ok`, che ha successo quando la sua condizione è vera. Ogni controllo può anche ricevere una descrizione:

```raku
use Test;

ok 1 == 1, 'one equals one';
ok 2 > 1,  'two is greater';

done-testing;
```

Quando lo esegui, stampa questo nel formato di test standard chiamato _TAP_:

```
ok 1 - one equals one
ok 2 - two is greater
1..2
```

Ogni controllo che ha successo appare come `ok` con il suo numero e la descrizione. Un controllo fallito mostrerebbe `not ok`. L'ultima riga, `1..2`, è il _piano_, che dice quanti test sono stati eseguiti. La chiamata a `done-testing` alla fine stampa questo piano automaticamente.

Quando ti aspetti un certo valore, `is` è più chiaro di `ok`. Se il test fallisce, `is` mostra sia il valore atteso sia il valore effettivo:

```raku
use Test;

is 2 + 2, 4, 'addition works';

done-testing;
```

Questo stampa `ok 1 - addition works`. Per vedere come `is` segnala un problema, dagli un valore atteso sbagliato:

```raku
use Test;

is 2 + 2, 5, 'addition works';

done-testing;
```

Ora il controllo fallisce, e l'output spiega esattamente cosa è andato storto:

```
not ok 1 - addition works
# Failed test 'addition works'
# at test.raku line 3
# expected: '5'
#      got: '4'
1..1
# You failed 1 test of 1
```

La riga `not ok` segna il fallimento. Le righe sotto mostrano cosa era atteso e cosa ha ottenuto davvero il programma. Quindi, quando conta un certo valore, `is` è più utile di un semplice `ok`.

`ok`, `is` e `done-testing` bastano già per un file di test utile. L'argomento successivo aggiunge [gli altri confronti](/it/advanced/testing/comparisons).

{% include nav.html %}
