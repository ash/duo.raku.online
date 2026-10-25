---
title: Namen van de variabelen
---

{% include menu.html %}

Voordat we verder gaan, eerst een interessant onderwerp: welke namen kunnen variabelen hebben? Tot nu toe hebben we eenvoudige namen gezien, zoals `$name` of `$age`. Ze hadden alleen kleine letters van het Engelse alfabet. Maar er zijn meer mogelijkheden.

## Hoofdletters en kleine letters

Namen van variabelen, of _identifiers_, zijn hoofdlettergevoelig. Dat betekent dat hoofdletters en kleine letters verschillend zijn. Daarom verwijzen alle namen hieronder naar verschillende scalaire containers:

```raku
$myname

$MyName

$myName

$MYNAME
```

Welke stijl je voor namen kiest, is aan jou. Maar misschien wil je namen met alleen hoofdletters bewaren voor constanten.

## Andere tekens

Ook een paar andere ASCII-tekens zijn toegestaan. Dat zijn cijfers, het onderstrepingsteken `_`, het koppelteken `-` en het enkele aanhalingsteken `'`. Het enkele aanhalingsteken staat voor een apostrof. Let op dat een identifier moet beginnen met een letter of een onderstrepingsteken. Na zowel `-` als `'` moet direct een letter komen. Hier zijn nog een paar geldige identifiers:

```raku
$___

$a'b'c

$my-name

$address2
```

Nogmaals, de keuze van de namen is aan jou. Maar het is waarschijnlijk geen goede gewoonte om expres namen te kiezen die moeilijk te begrijpen zijn.

## Unicode tekens

Eigenlijk is het begrip letters en cijfers breder. Daarbij horen alle tekens die volgens hun Unicode-eigenschappen letters of decimale cijfers zijn. De volgende variabelen zijn bijvoorbeeld geldig in Raku:

```raku
$привет

$駱駝道

$αβγ

$Δ۲ # waarbij ۲ een cijfer is
```

{% include nav.html %}
