---
title: Uitvoeren vanaf de opdrachtregel
---

{% include menu.html %}

Sla de tekst van het programma op in een tekstbestand, bijvoorbeeld `hello.raku`. Geef daarna het pad ervan door aan het opdrachtregelprogramma `raku`. Het dollarteken toont de prompt van de shell:

```console
$ raku hello.raku
```

Als het programma geen fouten heeft, wordt het meteen uitgevoerd. Als er uitvoer is, zie je die in de terminal:

```console
$ raku hello.raku 
Hallo, Wereld!
```

Op Unix-gebaseerde systemen kun je een shebang toevoegen en het bestand uitvoerbaar maken:

```raku
#!/usr/bin/env raku

say 'Hallo, Wereld!';
```

De volgende stappen zijn als volgt:

```console
$ chmod a+x hello.raku
$ ./hello.raku
Hallo, Wereld!
```

{% include nav.html %}
