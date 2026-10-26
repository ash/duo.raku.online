---
title: Slurpy nosauktie argumenti
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Uzrakstiet apakšprogrammu `describe`. Tās pirmais parametrs ir nosaukums. Šis nosaukums ir pozicionāls un obligāts. Pēc tā uzsūcošs hešs `*%opts` savāc jebkuru skaitu nosaukto argumentu. Apakšprogramma atgriež šādu virkni: `name: key=value, key=value, ...`. Virkne uzskaita katru opciju. Atslēgas ir alfabēta secībā.

Izsauciet to šādi: `describe('Anna', colour => 'red', size => 5)`. Izdrukājiet rezultātu.

## Piemers

Programma izvada:

```
Anna: colour=red, size=5
```

## Risinajums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
