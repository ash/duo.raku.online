---
title: 'Solutio: Verbum inversum'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Methodus `reversed` proprium obiecti `text` per accessorem eius, `$.text`, accipit. Deinde inbuiltum `flip` in eo vocat, quod chordam invertit.

1. Methodus directe in novo obiecto `Word` vocatur. Nihil in obiecto retro servatur. `reversed` solum novum valorem ex attributo computat et eum reddit.

1. Nota: intra classem accessorem non requiris. Variabilem directe legere potes:

```raku
    method reversed {
        $!text.flip;
    }
```

{% include nav.html %}
