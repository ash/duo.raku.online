---
title: Bestanden en mappen verwijderen
translations_gpt:
---

{% include menu.html %}

`spurt` en `mkdir` maken dingen aan op de schijf. Twee andere routines halen dingen van de schijf weg.

De routine `unlink` verwijdert een bestand:

```raku
spurt 'temp.txt', 'scratch data';
say 'temp.txt'.IO.e; # True

unlink 'temp.txt';
say 'temp.txt'.IO.e; # False
```

`unlink` verwijdert het bestand met de gegeven naam. Net als andere routines voor het bestandssysteem is `unlink` ook een methode. Je roept hem aan op een padobject: `'temp.txt'.IO.unlink`.

Verwijderen gebeurt meteen, en het is voor altijd. Er is geen prullenbak. Je krijgt het bestand niet terug. Let nog op één ding. Na het verwijderen controleer je het bestand met `.e`. Deze methode controleert of het pad bestaat. Gebruik hier geen `.f`. De tests `.f` en `.d` controleren het type van het pad. Ze geven een fout als het pad er niet is.

De routine `rmdir` verwijdert een map. Maar de map moet **leeg** zijn:

```raku
mkdir 'reports';
rmdir 'reports';
say 'reports'.IO.e; # False
```

Als de map niet leeg is, verwijdert `rmdir` niets. De map blijft op haar plaats. Een map met bestanden verwijder je dus in twee stappen. Eerst maak je haar leeg. Daarna verwijder je haar:

```raku
mkdir 'reports';
spurt 'reports/jan.txt', 'January';
spurt 'reports/feb.txt', 'February';

.unlink for 'reports'.IO.dir;   # delete every entry
rmdir 'reports';                # now the directory is empty
say 'reports'.IO.e;             # False
```

`'reports'.IO.dir` geeft een lijst van de items in de map. Je zag dat in het vorige onderwerp. Het programma roept `.unlink` aan op elk item. Dat verwijdert ze allemaal. Nu is de map leeg. Dus kan `rmdir` haar verwijderen. Deze eenvoudige lus verwacht alleen bestanden in de map. Maar een map kan ook andere mappen bevatten. Dan moet je eerst elke map daarbinnen leegmaken. Dat doe je op dezelfde manier.

{% include nav.html %}
