---
title: Dinamisks mainīgais
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Dinamisku mainīgo raksta ar tvigilu `*`. Raku to atrod, meklējot uz āru pa izsaukumu steku, nevis pēc leksiskā redzamības apgabala. Tāpēc vērtība, ko apakšprogramma redz, ir atkarīga no tā, kas to izsauca. Tas ļauj blokam izpildīt kodu, ko tas izsauc, ar citu identitāti.

1. Deklarējiet dinamisku mainīgo `$*user` ar vērtību `'guest'`.
2. Uzrakstiet apakšprogrammu `whoami`, kas izdrukā `running as ` un pēc tam pašreizējo `$*user` (piemēram, `running as guest`). Tai nav parametru, tāpēc tai `$*user` jānolasa tieši.
3. Izsauciet `whoami` vienreiz augšējā līmenī. Tā parāda `guest`.
4. Pēc tam izveidojiet bloku, kas vēlreiz deklarē `$*user` kā `'admin'`. Tā iekšienē vēlreiz izsauciet *to pašu* `whoami`. Tagad tā parāda `admin`.

## Piemērs

Programma izdrukā:

```
running as guest
running as admin
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
