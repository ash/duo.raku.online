---
title: 'Solutio: Tracta et perge'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
for <ok bad ok> -> $item {
    {
        die 'boom' if $item eq 'bad';
        say "processed $item";

        CATCH {
            default {
                say "skipped ($item): {.message}";
            }
        }
    }
}
```

🦋 Inveni codicem fontem in archivo [handle-and-continue.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/handle-and-continue.raku).

## Exitus

```
processed ok
skipped (bad): boom
processed ok
```

## Commentarii

1. Fasis `CATCH` intra clausulam est quae pro quoque elemento currit. Itaque `die` solum pro illo uno elemento tractat. Exceptio ibi tractatur, itaque numquam effugit ut totum anulum sistat.

1. Hic est casus usitatus ubi `CATCH` melior est quam `try`. Defectus in uno gyro anuli eo ipso loco tractatur ubi accidit. Deinde anulus ad elementum sequens transit. Elementum medium deficit, sed duo elementa `ok` tamen tractantur.

{% include nav.html %}
