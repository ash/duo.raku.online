---
title: Pārrakstīt dinamisko
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Parādiet, kā dinamisks mainīgais iziet cauri rutīnai, kas ir pa vidu. Šī rutīna par to neko nezina.

Uzrakstiet apakšprogrammu `log-it($msg)`, kas izdrukā paziņojumu ar dinamisko mainīgo `$*prefix` priekšā. Uzrakstiet otru apakšprogrammu `task`, kas tikai izsauc `log-it('working')`. Tā pati nekad nepiemin `$*prefix`. Pēc tam izsauciet `task` divreiz, katru reizi no bloka iekšienes. Katrs bloks piešķir `$*prefix` citu vērtību: vispirms `INFO`, tad `DEBUG`.

## Piemērs

Programma izdrukā:

```
INFO: working
DEBUG: working
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
