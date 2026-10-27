---
title: Cancellare file e directory
translations_gpt:
---

{% include menu.html %}

`spurt` e `mkdir` creano cose sul disco. Altre due routine rimuovono cose dal disco.

La routine `unlink` cancella un file:

```raku
spurt 'temp.txt', 'scratch data';
say 'temp.txt'.IO.e; # True

unlink 'temp.txt';
say 'temp.txt'.IO.e; # False
```

`unlink` cancella il file con il nome dato. Come altre routine del file system, `unlink` è anche un metodo. Lo chiami su un oggetto percorso: `'temp.txt'.IO.unlink`.

La cancellazione avviene subito, ed è per sempre. Non c'è un cestino. Non puoi riavere il file. Nota ancora una cosa. Dopo che cancelli un file, controllalo con `.e`. Questo metodo controlla se il percorso esiste. Qui non usare `.f`. I test `.f` e `.d` controllano il tipo del percorso. Danno un errore quando il percorso non c'è.

La routine `rmdir` rimuove una directory. Ma la directory deve essere **vuota**:

```raku
mkdir 'reports';
rmdir 'reports';
say 'reports'.IO.e; # False
```

Se la directory non è vuota, `rmdir` non rimuove niente. La directory resta al suo posto. Quindi cancelli una directory con dei file in due passi. Prima la svuoti. Poi la rimuovi:

```raku
mkdir 'reports';
spurt 'reports/jan.txt', 'January';
spurt 'reports/feb.txt', 'February';

.unlink for 'reports'.IO.dir;   # delete every entry
rmdir 'reports';                # now the directory is empty
say 'reports'.IO.e;             # False
```

`'reports'.IO.dir` dà un elenco delle voci nella directory. L'hai visto nell'argomento precedente. Il programma chiama `.unlink` su ogni voce. Così le rimuove tutte. Ora la directory è vuota. Quindi `rmdir` può rimuoverla. Questo ciclo semplice si aspetta solo file nella directory. Ma una directory può contenere anche altre directory. Allora devi prima svuotare ogni directory interna. Lo fai nello stesso modo.

{% include nav.html %}
