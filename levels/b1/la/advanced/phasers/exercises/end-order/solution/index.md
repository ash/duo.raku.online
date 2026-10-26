---
title: 'Solutio: Ordo ENDium'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Ambo phaseres `END` post codicem principalem currunt, ergo programma primum `body` imprimit.

1. Plures phaseres `END` currunt ordine ultimus intrans, primus exiens. `second END` postea declaratur, ergo ante `first END` currit. Hoc simile est purgationi, quae plerumque constitutionem recentissimam primam dissolvere debet.

{% include nav.html %}
