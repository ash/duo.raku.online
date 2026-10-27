---
title: "L'oggetto Proc"
translations_gpt:
---

{% include menu.html %}

Ogni chiamata a `run` o `shell` restituisce un oggetto `Proc`. È una piccola scheda che descrive quale programma è stato eseguito e come è terminato. Gli argomenti precedenti hanno usato il suo handle `.out` per leggere l'output. Ma un `Proc` contiene più di questo.

La parte più utile è il **codice di uscita**. Con un piccolo intero, un programma dice a chi lo ha avviato se è riuscito. `0` significa successo. Qualsiasi altro numero è un codice di fallimento che il programma sceglie da solo. `.exitcode` ti dà quel numero:

```raku
my $proc = run 'sh', '-c', 'exit 3';
say $proc.exitcode; # 3
```

Di solito fai solo una domanda da sì o no: ha funzionato? Per questo un `Proc` è semplicemente vero quando il codice di uscita è `0`. Altrimenti è falso. Così puoi controllarlo direttamente:

```raku
my $proc = run 'ls', '/', :out;
$proc.out.slurp(:close);
say $proc ?? 'ok' !! 'failed'; # ok
```

Un `Proc` ricorda anche quale comando ha avviato, in `.command`:

```raku
my $proc = run 'echo', 'hi', :out;
$proc.out.slurp(:close);
say $proc.command; # (echo hi)
```

C'è una cosa a cui fare attenzione. Se un comando fallisce e tu semplicemente **ignori** il `Proc` restituito, Raku solleva un'eccezione. Non lascia passare il fallimento in silenzio:

```raku
run 'sh', '-c', 'exit 1';
# dies: The spawned command 'sh' exited unsuccessfully (exit code: 1, signal: 0)
```

Un codice di uscita diverso da zero di solito significa che qualcosa è andato storto. Quindi, se butti via un `Proc` fallito, questo solleva un'eccezione. Succede quando esce dal suo ambito. La causa è *buttare via* il risultato, non ignorare il codice di uscita. Basta conservare il `Proc` in una variabile per evitare l'eccezione. Non devi nemmeno guardarlo di nuovo.

```raku
my $proc = run 'sh', '-c', 'exit 1'; # no error, even though it failed
# …and $proc is never used again
```

Quindi, se ti *aspetti* che un comando possa fallire, conserva il suo `Proc`. Poi guarda `.exitcode`, o controllalo come Booleano. Fallo ogni volta che vuoi sapere che cosa è successo.

{% include nav.html %}
