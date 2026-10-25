---
title: Uitvoeren vanaf de opdrachtregel
---

{% include menu.html %}

Sla het programma op in een tekstbestand, bijvoorbeeld `hello.raku`. Geef dan het pad van het bestand aan het opdrachtregelprogramma `raku`. Hier is het dollarteken de prompt van de shell:

```console
$ raku hello.raku
```

Als het programma geen fouten heeft, draait het meteen. Als het iets afdrukt, zie je het resultaat in de terminal:

```console
$ raku hello.raku 
Hallo, Wereld!
```

Op Unix-systemen kun je een shebang toevoegen. Dat is een speciale eerste regel. Je kunt het bestand ook uitvoerbaar maken:

```raku
#!/usr/bin/env raku

say 'Hallo, Wereld!';
```

Dit zijn de volgende stappen:

```console
$ chmod a+x hello.raku
$ ./hello.raku
Hallo, Wereld!
```

{% include nav.html %}
