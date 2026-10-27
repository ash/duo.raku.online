---
title: "Quiz — L'oggetto Proc"
translations_gpt:
---

{% include menu.html %}

Cosa stampa il programma seguente?

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

`.exitcode` è l'intero che il programma ha restituito. Qui la shell ha ricevuto l'ordine `exit 2`, quindi è `2`. Il programma non solleva eccezioni. Il `Proc` fallito è conservato in `$proc` e controllato con `.exitcode`. Guardare il risultato conta come gestirlo. Un'eccezione ci sarebbe solo se un `Proc` fallito venisse buttato via senza un controllo.

</div>

{% include nav.html %}
