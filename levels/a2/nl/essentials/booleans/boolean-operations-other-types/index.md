---
title: Boolean bewerkingen met andere typen
---

{% include menu.html %}

De volgende sectie gaat over [gegevens van het ene type naar het andere omzetten](/nl/essentials/coercion). Maar kijk eerst naar een belangrijke eigenschap van Raku. Je kunt Booleaanse operaties gebruiken met strings of gehele getallen. Dan zet Raku de waarden niet om naar Booleaanse waarden. Het resultaat is ook geen Booleaanse waarde. Bekijk deze voorbeelden:

```raku
say 'Hello' && 'World'; # World
say 'Alpha' || 'Beta';  # Alpha
say 0 ^^ 42;            # 42
```

Hier zijn de regels 📖 [uit de documentatie](https://docs.raku.org/language/operators#Tight_AND_precedence):

* `&&` geeft de eerste waarde terug die Raku als False ziet. Als er geen zulke waarde is, geeft het de laatste waarde terug.
* `||` geeft de eerste waarde terug die Raku als True ziet. Als er geen zulke waarde is, geeft het de laatste waarde terug.
* `^^` geeft de True-waarde terug als er maar één True-waarde is. Als alle waarden False zijn, geeft het de laatste waarde terug. Als meer dan één waarde True is, geeft het `Nil` terug.

Hier zien we een nieuwe waarde, `Nil`. Het is een ‘null’-waarde.

{% include nav.html %}
