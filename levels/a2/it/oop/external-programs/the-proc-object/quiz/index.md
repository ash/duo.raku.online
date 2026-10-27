---
title: "Quiz — L'oggetto Proc"
translations_gpt:
---

{% include menu.html %}

Cosa stampa questo programma?

```raku
my $proc = run 'sh', '-c', 'exit 2', :out;
$proc.out.slurp(:close);
say $proc.exitcode;
```

{:.quiz}
0 | 0
1 | 2
0 | True
0 | un errore

{% include quiz.html %}

<div class="extended-explanation">

`.exitcode` è il numero intero che il programma ha restituito. Qui la shell ha ricevuto il comando `exit 2`. Quindi il numero è `2`. Il programma non solleva un'eccezione. Quindi non si ferma con un errore. Il programma conserva il `Proc` fallito in `$proc`. Poi lo guarda con `.exitcode`. Guardare il risultato conta come gestirlo. Ricevi un'eccezione solo in un caso. Succede quando butti via un `Proc` fallito senza un controllo.

</div>

{% include nav.html %}
