---
title: 'Solutio: Tracta et perge'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. Fasis `CATCH` intra clausulam pro uno elemento est. Itaque `die` solum pro hoc elemento tractat. Ibi exceptionem tractat. Itaque exceptio numquam e clausula exit. Totum anulum sistere non potest.

1. Hic est casus frequens pro `CATCH`, non pro `try`. Unus gyrus anuli deficit. Programma errorem eo ipso loco tractat. Deinde anulus ad elementum sequens pergit. Elementum medium deficit. Sed programma duo elementa `ok` tamen tractat.

{% include nav.html %}
