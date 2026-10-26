---
title: Tēmas mainīgais
translations_gpt:
---

{% include menu.html %}

## Uzdevums

`$_` ir *tēmas* mainīgais. Cikls `for` pēc kārtas piešķir tam katru elementu. Metodes izsaukums, piemēram, `.chars`, sākas ar punktu, un pirms tā nav objekta. Šāds izsaukums darbojas ar `$_`, tāpēc `.chars` nozīmē `$_.chars`.

Palaidiet ciklu pāri trim virknēm `'apple'`, `'fig'` un `'cherry'`. Katrai no tām izdrukājiet rindu formā `<vārds> has <n> letters`. Vārdam izmantojiet tēmu `$_`. Tā garumam izmantojiet izsaukumu `.chars` ar punktu priekšā. Vērojiet, kā `$_` pēc kārtas kļūst par katru virkni.

## Piemērs

Programma izdrukā:

```
apple has 5 letters
fig has 3 letters
cherry has 6 letters
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
