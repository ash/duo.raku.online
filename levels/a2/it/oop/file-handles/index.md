---
title: Handle di file
translations_gpt:
---

{% include menu.html %}

È facile leggere o scrivere un file intero in una volta. Ma a volte vuoi scorrere un file riga per riga. Oppure vuoi scrivere in un file molte volte. Il file deve restare aperto per tutto quel tempo. Per questo usi un _handle di file_. Un handle di file è un oggetto per un file aperto. Attraverso questo handle leggi dal file o scrivi nel file.

Ecco il modo più facile per leggere un file riga per riga. Non devi neanche creare tu un handle. Chiama il metodo `lines` su un oggetto percorso. Ti dà le righe una per una. Sono pronte per un ciclo `for`:

```raku
spurt 'words.txt', "one\ntwo\nthree\n";

for 'words.txt'.IO.lines -> $line {
    say $line.uc;
}
```

Ogni `$line` è una riga. Alla fine della riga non c'è il ritorno a capo. Il programma stampa:

```
ONE
TWO
THREE
```

Puoi anche scrivere in un file attraverso un handle. Prima apri il file con `open` e il flag `:w`. Questo flag vuol dire write, cioè scrivere. Poi usa i metodi `say` o `print` dell'handle. Alla fine chiudilo con `close`:

```raku
my $fh = open 'out.txt', :w;
$fh.say('first line');
$fh.say('second line');
$fh.close;
```

Alla fine chiudi l'handle. Così tutti i tuoi dati vanno davvero sul disco. Alcuni file sono troppo grandi per la memoria. Non puoi leggerli tutti in una volta. Per questi file di solito leggi riga per riga, come sopra.

{% include nav.html %}
