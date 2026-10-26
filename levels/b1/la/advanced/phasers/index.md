---
title: Phaseres
translations_gpt:
---

{% include menu.html %}

_Phaser_ est copia specialis. Automatice currit certo momento in vita programmatis. Non currit ubi in codice fonte apparet. Phaserem non vocas. Tantum dicis _quando_ codex eius currere debeat, nomine copiae.

Phaseres frequentissimi stadia totius programmatis signant:

* `BEGIN` quam primum currit, dum Raku programma adhuc compilat;
* `INIT` semel currit cum programma incipit, ante codicem principalem;
* `END` semel currit in ipso fine, postquam codex principalis finitus est.

Programma sequens hos phaseres inter sententias ordinarias ponit. Nota quod output ordinem linearum in archivo non sequitur:

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

`BEGIN` primus currit, dum programma compilatur. Deinde, cum programma currit, `INIT` ante corpus principale venit. Tum corpus principale imprimit. `END` ultimus currit, ubicumque in archivo scriptus est.

`END` saepe adhibetur paulo antequam programma finitur. Summarium imprimere vel aliquid purgare potest. `BEGIN` utilis est pro opere quod ante omnia alia fieri debet.

{% include nav.html %}
