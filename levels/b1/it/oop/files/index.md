---
title: Lavorare con i file
translations_gpt:
---

{% include menu.html %}

Nel caso più semplice, leggi o scrivi un file intero in una volta.

La routine `spurt` scrive una stringa in un file. Crea il file, o ne sostituisce il contenuto se il file esiste già:

```raku
spurt 'greeting.txt', "Hello, file!\n";
```

La routine `slurp` rilegge tutto il file in una stringa:

```raku
my $text = slurp 'greeting.txt';
print $text; # Hello, file!
```

Insieme, `spurt` e `slurp` salvano dei dati e li ricaricano con solo due chiamate brevi. Qui usiamo `print` invece di `say`, perché il testo finisce già con un ritorno a capo.

Queste routine lavorano con tutto il file in una volta. Sono la scelta migliore per i file abbastanza piccoli da stare facilmente in memoria. Per i file più grandi usi un [handle di file](/it/oop/file-handles). Ne hai bisogno anche per lavorare con un file riga per riga. Parliamo degli handle di file alla fine di questa sezione. Il prossimo argomento mostra come aggiungere a un file invece di sostituirlo.

{% include nav.html %}
