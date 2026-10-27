---
title: Een map opsommen
translations_gpt:
---

{% include menu.html %}

De routine `dir` geeft de items van een map terug. Een item is een bestand of een map daarin. Elk item is een padobject. De volgorde van de items ligt niet vast. Dus sorteren mensen het resultaat vaak. Dan komt de uitvoer altijd in dezelfde volgorde.

```raku
mkdir 'box';
spurt 'box/a.txt', '';
spurt 'box/b.txt', '';

for dir('box').sort -> $entry {
    say $entry.basename;
}
```

Dit programma drukt de namen af van de bestanden in de map `box`. De namen staan op volgorde:

```
a.txt
b.txt
```

Elk item is een volledig padobject. De methode `basename` geeft alleen de naam aan het eind. Hij geeft het mapgedeelte niet. Je kunt een padobject dezelfde vragen stellen als eerder: `.f`, `.d`, `.e`. Zo kun je bijvoorbeeld alleen de bestanden uit een map halen.

{% include nav.html %}
