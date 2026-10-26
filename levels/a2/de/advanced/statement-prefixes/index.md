---
title: Anweisungspräfixe
---

{% include menu.html %}

Ein _Statement-Prefix_ ist ein Schlüsselwort. Du setzt es vor eine Anweisung oder einen Block. Es ändert, wie die Anweisung oder der Block läuft. Du kennst schon ein Präfix: `gather`. Es sammelt alles, was ein Block an `take` gibt. Dieser Abschnitt zeigt noch ein paar Präfixe für den allgemeinen Gebrauch.

Präfixe können verschiedene Dinge tun. Mit `do` wird ein Block zu einem Ausdruck mit einem Wert. Mit `eager` und `lazy` wählst du, wann Raku eine Liste berechnet. Raku kann sie sofort berechnen oder erst, wenn sie gebraucht wird. Mit `sink` läuft Code nur für seine Seiteneffekte. Ein Seiteneffekt ist eine zusätzliche Aktion des Codes, zum Beispiel eine Ausgabe. Mit `quietly` läuft Code und zeigt seine Warnungen nicht.

{% include nav.html %}
