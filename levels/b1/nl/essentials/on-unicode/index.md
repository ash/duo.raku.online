---
title: Opmerkingen over het gebruik van Unicode
---

{% include menu.html %}

Raku gaat ervan uit dat al je programmabestanden in UTF-8 zijn opgeslagen. In de praktijk hoef je je geen zorgen te maken over niet-ASCII-tekens. Je kunt ze bijvoorbeeld in string-literals gebruiken. Maar dat is niet alles. Een UTF-8-tekstbestand lezen is waarschijnlijk ook geen probleem. Het betekent ook dat Raku de lengte van een string goed bepaalt. Het telt tekens, geen bytes. We bekijken dit later in meer detail.

Hier is het volgende wat je moet weten. Identificatoren, of namen, kunnen niet-Latijnse of niet-Engelse letters hebben. Als je wilt, kun je je variabele `$ι` noemen in plaats van `$i`. De compiler zal dat goed lezen.

Raku is vrij streng met de Unicode-eigenschappen van tekens. Het weet bijvoorbeeld of een teken een letter of een cijfer is. Het weet ook welke tekens paren vormen, zoals haakjes en andere haken. Vaak kunnen verschillende delen van het programma verschillende soorten haakjes gebruiken. Laten we bijvoorbeeld ons 'Hello, World!'-programma aanpassen. We kunnen er deze niet-Latijnse aanhalingstekens in gebruiken. Je ziet ze terug als we met Raku-grammatica's werken:

```raku
say ｢Hello, World!｣;
```

Sommige ingebouwde operators hebben twee vormen: Unicode en ASCII. Je kunt ‘niet gelijk’ bijvoorbeeld typen als `!=` of als `≠`. Hetzelfde geldt voor setbewerkingen. `∈` heeft bijvoorbeeld een pure ASCII-versie, `(elem)`. Ook kun je een ingebouwde constante aanduiden als `pi` of `π`.

Bij getallen kun je breuken zoals `½` gebruiken in plaats van `0.5`. Je kunt ook het kwadraat van `$x` krijgen met een superscript-teken: `$x²`.

Bekijk de volledige lijst van zulke paren in de documentatie: 📖 [Unicode versus ASCII symbolen](https://docs.raku.org/language/unicode_ascii).

{% include nav.html %}
