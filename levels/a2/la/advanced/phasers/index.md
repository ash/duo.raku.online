---
title: Phaseres
translations_gpt:
---

{% include menu.html %}

_Phaser_ est copia specialis. Per se currit certo momento in vita programmatis. Non currit in loco suo in codice. Phaserem non vocas. Tantum dicis _quando_ codex eius currere debet. Nomen copiae hoc dicit.

Phaseres frequentissimi ad stadia totius programmatis pertinent:

* `BEGIN` quam primum currit. Tunc Raku programma adhuc compilat.
* `INIT` semel currit cum programma incipit. Ante codicem principalem currit.
* `END` semel currit in ipso fine. Currit postquam codex principalis finitus est.

Hoc programma hos phaseres inter sententias ordinarias habet. Specta output. Ordinem linearum in archivo non sequitur:

```raku
say 'main body';
BEGIN say 'BEGIN';
END say 'END';
INIT say 'INIT';
```

Programma imprimit:

```
BEGIN
INIT
main body
END
```

`BEGIN` primus currit, dum compilatio fit. Deinde programma currit. `INIT` ante corpus principale currit. Tum corpus principale lineam suam imprimit. `END` ultimus currit. Locus eius in archivo nihil mutat.

Homines saepe summarium cum `END` imprimunt. Etiam aliquid cum eo purgant. Hoc fit paulo antequam programma desinit. `BEGIN` utilis est pro opere quod ante omnia alia fieri debet.

{% include nav.html %}
