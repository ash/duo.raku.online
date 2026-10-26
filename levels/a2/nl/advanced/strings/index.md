---
title: Strings
translations_gpt:
---

{% include menu.html %}

In het deel Essentials leerde je [hoe je strings maakt](/nl/essentials/strings). Je leerde strings samenvoegen en interpoleren. Je leerde ook de lengte van een string vinden. Strings hebben ook veel methoden. Dit deel laat de nuttigste zien. Zoeken met [reguliere expressies](/nl/regexes) is een apart, groter onderwerp. Het krijgt later in de cursus een eigen deel.

Drie methoden veranderen de vorm van de letters in een string. Het gaat om hoofdletters of kleine letters:

```raku
say 'raku'.uc; # RAKU  — hoofdletters
say 'RAKU'.lc; # raku  — kleine letters
say 'raku'.tc; # Raku  — beginhoofdletter
```

De methode `flip` schrijft de tekens van een string achterstevoren:

```raku
say 'Raku'.flip; # ukaR
```

En de operator `x` herhaalt een string meerdere keren. Je geeft zelf het aantal keer op:

```raku
say 'ab' x 3; # ababab
```

De volgende onderwerpen laten zien hoe je in strings zoekt. Ze laten ook zien hoe je strings in stukken splitst. En ze laten zien hoe je de stukken weer samenvoegt.

{% include nav.html %}
