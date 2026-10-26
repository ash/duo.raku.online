---
title: Anweisungspräfixe
---

{% include menu.html %}

Ein _Statement-Prefix_ ist ein Schlüsselwort, das du vor eine Anweisung oder einen Block setzt. Es ändert, wie der Code läuft. Du hast schon eines gesehen: `gather`, das alles sammelt, was ein Block an `take` gibt. Dieser Abschnitt zeigt noch ein paar weitere Präfixe für den allgemeinen Gebrauch.

Mit Präfixen kannst du verschiedene Dinge tun. Du kannst einen Block in einen Ausdruck verwandeln, der einen Wert liefert (`do`). Du kannst entscheiden, wann eine Liste berechnet wird: sofort oder bei Bedarf (`eager` und `lazy`). Und du kannst Code nur für seine Seiteneffekte ausführen (`sink`). Oder du kannst ihn mit ausgeschalteten Warnungen ausführen (`quietly`).

{% include nav.html %}
