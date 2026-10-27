---
title: Cancellare file e directory
translations_gpt:
---

{% include menu.html %}

`spurt` e `mkdir` creano cose su disco, e altre due routine le rimuovono.

La routine `unlink` cancella un file:

```raku
spurt 'temp.txt', 'scratch data';
say 'temp.txt'.IO.e; # True

unlink 'temp.txt';
say 'temp.txt'.IO.e; # False
```

`unlink` cancella il file con il nome dato. Come le altre routine del file system, ha anche una forma a metodo. Lo chiami su un oggetto percorso: `'temp.txt'.IO.unlink`.

La cancellazione avviene subito ed è definitiva. Non c'è un cestino da cui riprendere il file. Nota ancora una cosa su un file cancellato. Devi controllarlo con `.e` (esistenza), non con `.f`. I test di tipo `.f` e `.d` danno un errore se il percorso non c'è.

La routine `rmdir` rimuove una directory, ma solo se **vuota**:

```raku
mkdir 'reports';
rmdir 'reports';
say 'reports'.IO.e; # False
```

Se nella directory c'è ancora qualcosa, `rmdir` non rimuove niente. La directory resta dov'è. Quindi, per cancellare una directory con dei file, prima svuotala e poi rimuovila:

```raku
mkdir 'reports';
spurt 'reports/jan.txt', 'January';
spurt 'reports/feb.txt', 'February';

.unlink for 'reports'.IO.dir;   # delete every entry
rmdir 'reports';                # now the directory is empty
say 'reports'.IO.e;             # False
```

`'reports'.IO.dir` elenca le voci della directory, come hai visto nell'argomento precedente. Chiamare `.unlink` su ogni voce la rimuove. Quando la directory è vuota, `rmdir` può rimuoverla. Nota che questo ciclo semplice si aspetta che la directory contenga solo file. Un albero di sottodirectory annidate avrebbe bisogno della ricorsione per svuotarle prima.

{% include nav.html %}
