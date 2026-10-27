---
title: Traktu kaj daŭrigu
translations_gpt:
---

{% include menu.html %}

## Problemo

Iru tra la tri eroj `ok`, `bad` kaj `ok`. Por ĉiu ero, rulu blokon, kiu presas `processed <item>`. Sed kiam la ero estas `bad`, la bloko faru `die 'boom'`. Metu fazeron `CATCH` ene de la bloko. Ĝi raportu malsukcesantan eron kiel `skipped (<item>): <message>`. Poste la buklo iru al la sekva ero anstataŭ halti.

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
