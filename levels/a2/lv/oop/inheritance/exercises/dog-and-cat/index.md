---
title: Darbinieki un lomas
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Izveidojiet bāzes klasi `Employee`. Tā ir vecākklase pārējām klasēm. Tai ir atribūts `name` un divas metodes. Metode `role` atgriež `'staff'`. Metode `badge` atgriež virkni `<vārds> - <loma>`. Lai iegūtu lomu, tā izsauc pati savu metodi `role`.

Pēc tam izveidojiet divas bērnklases, `Manager` un `Intern`. Tās manto no `Employee`. Katra no tām pārraksta `role`. Tas nozīmē, ka tai ir sava šīs metodes versija. Klasē `Manager` metode `role` atgriež `'manager'`. Klasē `Intern` tā atgriež `'intern'`.

Izdrukājiet caurlaidi vadītājam ar vārdu `Anna`. Pēc tam izdrukājiet caurlaidi praktikantam ar vārdu `Bob`.

## Piemērs

Programma izdrukā:

```
Anna - manager
Bob - intern
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
