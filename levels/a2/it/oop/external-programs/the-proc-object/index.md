---
title: "L'oggetto Proc"
translations_gpt:
---

{% include menu.html %}

Ogni chiamata a `run` o `shell` restituisce un oggetto `Proc`. È una piccola scheda sul programma. Ti dice quale programma è partito e come è finito. Negli argomenti precedenti abbiamo usato il suo handle `.out` per leggere l'output. Ma un `Proc` contiene più di questo.

La parte più utile è il **codice di uscita**. È un piccolo numero intero. Un programma lo restituisce a chi lo ha avviato. Con questo numero il programma dice se ha funzionato. `0` vuol dire successo. Ogni altro numero vuol dire fallimento. Il programma stesso sceglie questo codice di fallimento. `.exitcode` ti dà il numero:

```raku
my $proc = run 'sh', '-c', 'exit 3';
say $proc.exitcode; # 3
```

Spesso fai solo una domanda con un sì o un no come risposta. Ha funzionato? Per questo un `Proc` è vero quando il codice di uscita è `0`. Altrimenti è falso. Così puoi controllare direttamente il `Proc`:

```raku
my $proc = run 'ls', '/', :out;
$proc.out.slurp(:close);
say $proc ?? 'ok' !! 'failed'; # ok
```

Un `Proc` ricorda anche il comando che ha avviato. Lo trovi in `.command`:

```raku
my $proc = run 'echo', 'hi', :out;
$proc.out.slurp(:close);
say $proc.command; # (echo hi)
```

Fai attenzione a una cosa. A volte un comando fallisce. E se tu semplicemente **ignori** il `Proc` che restituisce? Allora Raku solleva un'eccezione. Un'eccezione è un errore che ferma il programma. Raku non lascia nascosto il fallimento:

```raku
run 'sh', '-c', 'exit 1';
# dies: The spawned command 'sh' exited unsuccessfully (exit code: 1, signal: 0)
```

Un codice di uscita diverso da `0` di solito vuol dire un problema. Quindi un `Proc` fallito solleva un'eccezione se lo butti via. Questo succede quando il `Proc` esce dal suo ambito. Allora nessun codice può più raggiungerlo. Il punto non è controllare il codice di uscita. Il punto è *buttare via* il risultato. Metti semplicemente il `Proc` in una variabile. Questo basta per evitare l'eccezione. Non devi neanche guardare di nuovo la variabile.

```raku
my $proc = run 'sh', '-c', 'exit 1'; # no error, even though it failed
# …and $proc is never used again
```

Quindi, ti *aspetti* che un comando possa fallire? Allora conserva il suo `Proc`. Quando vuoi sapere che cosa è successo, guarda `.exitcode`. Oppure controlla il `Proc` come valore Booleano.

{% include nav.html %}
