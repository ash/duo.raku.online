---
title: 'Solutio: Nuntio praefixum adde'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
{
    die 'timeout';

    CATCH {
        default {
            say 'Error: ' ~ .message;
        }
    }
}
```

🦋 Inveni codicem fontem in archivo [error-prefix.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/error-prefix.raku).

## Exitus

```
Error: timeout
```

## Commentarii

1. Obiectum exceptionis methodum `.message` habet. Textum dat quem ad `die` tradidisti.

1. `Error: ` ante hunc textum ponimus. Hoc lineam finalem dat. Obiectum exceptionis merus valor est. Itaque nuntio eius quolibet modo uti potes.

{% include nav.html %}
