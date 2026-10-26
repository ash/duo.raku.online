---
title: Dinamisks mainīgais
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Dinamiskam mainīgajam ir tvigils `*`. Raku to meklē caur izsaukumu steku, nevis pēc leksiskā redzamības apgabala. Tāpēc apakšprogramma var redzēt dažādas vērtības. Vērtība ir atkarīga no tā, kas izsauc apakšprogrammu. Tad bloks var likt kodam, ko tas izsauc, darboties kā kādam citam.

1. Deklarējiet dinamisku mainīgo `$*user` ar vērtību `'guest'`.
2. Uzrakstiet apakšprogrammu `whoami`. Tā izdrukā `running as ` un pēc tam pašreizējo `$*user`, piemēram, `running as guest`. Tai nav parametru. Tai `$*user` jānolasa tieši.
3. Izsauciet `whoami` vienreiz augšējā līmenī. Tā parāda `guest`.
4. Pēc tam izveidojiet bloku. Tajā vēlreiz deklarējiet `$*user` kā `'admin'`. Tur izsauciet *to pašu* `whoami`. Tagad tā parāda `admin`.

## Piemērs

Programma izdrukā:

```
running as guest
running as admin
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
