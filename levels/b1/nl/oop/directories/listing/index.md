---
title: Een map opsommen
translations_gpt:
---

{% include menu.html %}

De routine `dir` geeft de items van een map terug, elk als een padobject. Hun volgorde ligt niet vast. Dus sorteren mensen het resultaat vaak, en dan heeft de uitvoer altijd dezelfde volgorde.

```raku
mkdir 'box';
spurt 'box/a.txt', '';
spurt 'box/b.txt', '';

for dir('box').sort -> $entry {
    say $entry.basename;
}
```

Het programma drukt de gesorteerde namen af van de bestanden in de map `box`:

```
a.txt
b.txt
```

Elk item is een volledig padobject. De methode `basename` geeft alleen de laatste naam, zonder het mapgedeelte. Je kunt een padobject dezelfde vragen stellen als eerder: `.f`, `.d` en `.e`. Zo kun je bijvoorbeeld door een map lopen en alleen de bestanden kiezen.

{% include nav.html %}
