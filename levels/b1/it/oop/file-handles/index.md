---
title: Handle di file
translations_gpt:
---

{% include menu.html %}

Leggere o scrivere un file intero in una volta è facile. Ma a volte vuoi scorrere un file una riga alla volta. Oppure vuoi tenere un file aperto e scriverci molte volte. Per questo si usa un _handle di file_.

Ecco il modo più semplice per leggere un file riga per riga. Non devi nemmeno creare un handle per farlo. Il metodo `lines` di un oggetto percorso ti dà le righe una alla volta. Sono pronte per un ciclo `for`:

```raku
spurt 'words.txt', "one\ntwo\nthree\n";

for 'words.txt'.IO.lines -> $line {
    say $line.uc;
}
```

Ogni `$line` è una riga senza il ritorno a capo finale. Il programma stampa:

```
ONE
TWO
THREE
```

Per scrivere attraverso un handle, apri il file con `open` e il flag `:w` (write). Poi usa i metodi `say` o `print` dell'handle. Quando hai finito, chiudilo con `close`:

```raku
my $fh = open 'out.txt', :w;
$fh.say('first line');
$fh.say('second line');
$fh.close;
```

Quando chiudi l'handle, tutto quello che hai scritto viene davvero salvato su disco. Alcuni file sono troppo grandi per caricarli in memoria tutti in una volta. Per questi file di solito leggi riga per riga, come sopra.

{% include nav.html %}
