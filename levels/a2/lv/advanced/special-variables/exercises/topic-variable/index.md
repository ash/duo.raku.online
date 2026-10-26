---
title: Tēmas mainīgais
translations_gpt:
---

{% include menu.html %}

## Uzdevums

`$_` ir *tēmas* mainīgais. Cikls `for` pēc kārtas piešķir tam katru elementu. Daži metožu izsaukumi sākas ar punktu, piemēram, `.chars`. Pirms punkta nav nekā. Šāds izsaukums darbojas ar `$_`. Tāpēc `.chars` nozīmē `$_.chars`.

Palaidiet ciklu pāri trim virknēm: `'apple'`, `'fig'` un `'cherry'`. Katrai virknei izdrukājiet šādu rindu: `<vārds> has <n> letters`. Vārdam izmantojiet tēmu `$_`. Tā garumam izmantojiet izsaukumu `.chars`. Tas sākas ar punktu. Vērojiet, kā `$_` pēc kārtas kļūst par katru virkni.

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
