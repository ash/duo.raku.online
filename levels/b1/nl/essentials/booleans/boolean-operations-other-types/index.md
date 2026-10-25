---
title: Boolean bewerkingen met andere typen
---

{% include menu.html %}

In de volgende sectie praten we over [het omzetten van gegevens van het ene type naar het andere](/nl/essentials/coercion). Maar eerst is het belangrijk om op één eigenschap van Raku te wijzen. Je kunt Booleaanse operaties gebruiken met strings of gehele getallen. In dat geval worden de waarden niet omgezet naar Booleans. Het resultaat is ook geen Booleaanse waarde. Bekijk deze voorbeelden:

```raku
say 'Hello' && 'World'; # World
say 'Alpha' || 'Beta';  # Alpha
say 0 ^^ 42;            # 42
```

Laten we de regels lezen 📖 [uit de documentatie](https://docs.raku.org/language/operators#Tight_AND_precedence):

* `&&` geeft het eerste argument terug dat als Boolean False is. Als er geen is, geeft het het laatste argument terug.
* `||` geeft het eerste argument terug dat als Boolean True is. Als er geen is, geeft het het laatste argument terug.
* `^^` geeft het True-argument terug als er precies één is. Als alle argumenten False zijn, geeft het het laatste terug. Als meer dan één argument True is, geeft het `Nil` terug.

Let op: we zijn net `Nil` tegengekomen, en dat is een ‘null’-waarde.

{% include nav.html %}
