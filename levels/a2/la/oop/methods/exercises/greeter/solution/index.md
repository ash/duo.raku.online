---
title: 'Solutio: Verbum inversum'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
class Word {
    has $.text;

    method reversed {
        $.text.flip;
    }
}

say Word.new(text => 'Raku').reversed;
```

🦋 Inveni codicem fontem in archivo [greeter.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/greeter.raku).

## Exitus

```
ukaR
```

## Commentarii

1. Methodus `reversed` accipit `text` obiecti. Ad hoc accessorem `$.text` adhibet. Deinde methodum inbuiltam `flip` in eo vocat. `flip` chordam retro reddit.

1. Programma methodum directe in novo obiecto `Word` vocat. Methodus nihil servat. `reversed` solum novum valorem ex attributo facit et eum reddit.

1. Intra classem variabilem etiam directe legere potes. Ad hoc accessorem non requiris:

```raku
    method reversed {
        $!text.flip;
    }
```

{% include nav.html %}
