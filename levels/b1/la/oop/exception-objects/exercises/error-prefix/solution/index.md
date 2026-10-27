---
title: 'Solutio: Nuntio praefixum adde'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Methodus `.message` obiecti exceptionis textum ad `die` traditum reddit.

1. Eum ad finem `Error: ` iungere lineam finalem dat. Obiectum exceptionis merus valor est. Itaque nuntio eius quolibet modo uti potes.

{% include nav.html %}
