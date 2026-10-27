---
title: Lavorare con i file
translations_gpt:
---

{% include menu.html %}

Ecco il modo più facile per lavorare con un file. Leggi o scrivi tutto il file in una volta.

La routine `spurt` scrive una stringa in un file. Crea il file. Oppure, se il file c'è già, sostituisce il vecchio contenuto:

```raku
spurt 'greeting.txt', "Hello, file!\n";
```

La routine `slurp` legge tutto il file. Ti dà il contenuto come stringa:

```raku
my $text = slurp 'greeting.txt';
print $text; # Hello, file!
```

Con `spurt` e `slurp` salvi dei dati e poi li carichi di nuovo. Ti servono solo due chiamate brevi. Qui usiamo `print` e non `say`. Il motivo è che il testo finisce già con un ritorno a capo.

Queste routine lavorano con tutto il file in una volta. Vanno bene per i file piccoli. Un file piccolo entra facilmente in memoria. Per un file grande usi un [handle di file](/it/oop/file-handles). Lo usi anche per lavorare con un file riga per riga. Lo vedi alla fine di questa sezione. Il prossimo argomento mostra come aggiungere qualcosa a un file. Il vecchio contenuto del file resta lì.

{% include nav.html %}
