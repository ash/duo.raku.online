---
title: Bestanden en mappen verwijderen
translations_gpt:
---

{% include menu.html %}

`spurt` en `mkdir` maken dingen aan op schijf, en twee andere routines halen ze weg.

De routine `unlink` verwijdert een bestand:

```raku
spurt 'temp.txt', 'scratch data';
say 'temp.txt'.IO.e; # True

unlink 'temp.txt';
say 'temp.txt'.IO.e; # False
```

`unlink` verwijdert het bestand met de gegeven naam. Net als de andere routines voor het bestandssysteem heeft hij ook een methodevorm. Je roept hem aan op een padobject: `'temp.txt'.IO.unlink`.

Verwijderen gebeurt meteen en is definitief. Er is geen prullenbak waaruit je het bestand terug kunt halen. Let nog op één ding bij een verwijderd bestand. Je moet het controleren met `.e` (bestaan), niet met `.f`. De typetests `.f` en `.d` geven een fout als het pad er niet is.

De routine `rmdir` verwijdert een map, maar alleen een **lege**:

```raku
mkdir 'reports';
rmdir 'reports';
say 'reports'.IO.e; # False
```

Als er nog iets in de map zit, verwijdert `rmdir` niets. De map blijft waar ze is. Om een map met bestanden te verwijderen, maak je haar dus eerst leeg en verwijder je haar daarna:

```raku
mkdir 'reports';
spurt 'reports/jan.txt', 'January';
spurt 'reports/feb.txt', 'February';

.unlink for 'reports'.IO.dir;   # delete every entry
rmdir 'reports';                # now the directory is empty
say 'reports'.IO.e;             # False
```

`'reports'.IO.dir` somt de items van de map op, zoals je in het vorige onderwerp zag. Als je `.unlink` op elk item aanroept, verwijder je het. Als de map leeg is, kan `rmdir` haar verwijderen. Let op: deze eenvoudige lus verwacht alleen bestanden in de map. Een boom met geneste submappen zou recursie nodig hebben om ze eerst leeg te maken.

{% include nav.html %}
