---
title: 'Solutio: A chiliometris ad miliaria'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
class Converter {
    method km-to-miles($km) {
        $km * 0.621;
    }
}

say Converter.km-to-miles(10);
```

🦋 Inveni codicem fontem in archivo [km-to-miles.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/class-methods/km-to-miles.raku).

## Exitus

```
6.21
```

## Commentarii

1. Conversio nullum obiectum requirit. Itaque methodus classis est. Programma eam directe in `Converter` vocat.

1. Methodus classis tamen parametros habere potest. Hic numerum chiliometrorum accipit. Miliaria reddit.

{% include nav.html %}
