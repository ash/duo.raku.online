---
title: Pārrakstīt dinamisko
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Parādiet, kā dinamisks mainīgais iet cauri rutīnai pa vidu. Šī rutīna neko nezina par mainīgo.

Uzrakstiet apakšprogrammu `log-it($msg)`. Tā izdrukā paziņojumu. Pirms paziņojuma tā izdrukā dinamisko mainīgo `$*prefix`. Uzrakstiet otru apakšprogrammu, `task`. Tā tikai izsauc `log-it('working')`. Tā pati nekad neizmanto `$*prefix`. Pēc tam izsauciet `task` divas reizes. Katru reizi izsauciet to no bloka iekšienes. Katrs bloks dod `$*prefix` citu vērtību: vispirms `INFO`, tad `DEBUG`.

## Piemērs

Programma izdrukā:

```
INFO: working
DEBUG: working
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
