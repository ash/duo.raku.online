---
title: Traktu kaj daŭrigu
translations_gpt:
---

{% include menu.html %}

## Problemo

Skribu buklon tra tri eroj: `ok`, `bad` kaj `ok`. Por ĉiu ero, rulu blokon. La bloko presas `processed <item>`. Sed por la ero `bad`, ĝi faras `die 'boom'`. Metu fazeron `CATCH` ene de la bloko. Ĝi kaptas la eraron. Por malsukcesanta ero, ĝi presas `skipped (<item>): <message>`. Poste la buklo iras al la sekva ero. Ĝi ne haltas.

## Ekzemplo

La programo presas:

```
processed ok
skipped (bad): boom
processed ok
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
