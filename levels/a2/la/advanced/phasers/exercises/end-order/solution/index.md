---
title: 'Solutio: Ordo ENDium'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
END say 'first END';
END say 'second END';

say 'body';
```

🦋 Inveni codicem fontem in archivo [end-order.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/end-order.raku).

## Exitus

```
body
second END
first END
```

## Commentarii

1. Ambo phaseres `END` post codicem principalem currunt. Ergo programma primum `body` imprimit.

1. Plures phaseres `END` ordine “ultimus intrans, primus exiens” currunt. `second END` postea in codice venit. Sed ante `first END` currit. Hoc simile est purgationi in programmatibus veris. Plerumque constitutionem novissimam primam dissolvere debes.

{% include nav.html %}
