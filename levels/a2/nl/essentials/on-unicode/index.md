---
title: Opmerkingen over het gebruik van Unicode
---

{% include menu.html %}

Raku verwacht al je programmabestanden in UTF-8. Wat betekent dit in de praktijk? Je hoeft je geen zorgen te maken over tekens buiten ASCII. Je kunt ze bijvoorbeeld in strings zetten. Maar dat is niet alles. Je programma kan ook een UTF-8-tekstbestand lezen. Ook dan hoef je je waarschijnlijk geen zorgen te maken. Ook bepaalt Raku de lengte van een string goed. Het telt tekens, geen bytes. We bekijken dit later in meer detail.

Hier is het volgende punt. Namen in je programma kunnen niet-Latijnse of niet-Engelse letters hebben. Als je wilt, kun je een variabele `$ι` noemen in plaats van `$i`. De compiler leest dat goed.

Raku is heel precies met de Unicode-eigenschappen van tekens. Het weet bijvoorbeeld welke tekens letters of cijfers zijn. Het weet ook welke tekens paren vormen. Haakjes en andere haken zijn paren. Vaak kunnen verschillende delen van het programma verschillende haakjes gebruiken. Ons 'Hello, World!'-programma kan bijvoorbeeld deze niet-Latijnse aanhalingstekens gebruiken. Je ziet ze later terug, bij Raku-grammatica's:

```raku
say ｢Hello, World!｣;
```

Sommige ingebouwde operators hebben twee vormen. De ene vorm gebruikt Unicode, de andere alleen ASCII. Je kunt ‘niet gelijk’ bijvoorbeeld schrijven als `!=` of als `≠`. Bij setbewerkingen is het net zo. Een voorbeeld is `∈`. De ASCII-vorm daarvan is `(elem)`. Er is ook een ingebouwde constante. Die kun je schrijven als `pi` of als `π`.

Bij getallen kun je breuken schrijven als `½` in plaats van `0.5`. Je kunt ook het kwadraat van `$x` berekenen als `$x²`. Dat gebruikt een superscript-teken. Het is klein en staat hoog.

Hier is de volledige lijst van deze paren: 📖 [Unicode- en ASCII-symbolen](https://docs.raku.org/language/unicode_ascii).

{% include nav.html %}
