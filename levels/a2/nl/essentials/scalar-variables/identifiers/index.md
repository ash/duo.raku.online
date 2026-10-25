---
title: Namen van de variabelen
---

{% include menu.html %}

Voordat we verder gaan, kijken we naar een interessant onderwerp. Welke namen kunnen variabelen hebben? Tot nu toe gebruikten we eenvoudige namen, zoals `$name` of `$age`. Ze hebben alleen kleine letters uit het Engelse alfabet. Maar er zijn meer mogelijkheden.

## Hoofdletters en kleine letters

Namen van variabelen heten ook _identifiers_. In identifiers zijn hoofdletters en kleine letters verschillend. Daarom is elke naam hieronder een andere scalaire container:

```raku
$myname

$MyName

$myName

$MYNAME
```

Jij bepaalt hoe je je variabelen noemt. Maar hier is een idee. Gebruik namen met alleen hoofdletters voor constanten. Constanten zijn waarden die niet veranderen.

## Andere tekens

Er zijn ook nog andere ASCII-tekens mogelijk. Je kunt cijfers en het onderstrepingsteken `_` gebruiken. Je kunt ook het koppelteken `-` en het enkele aanhalingsteken `'` gebruiken. Hier betekent het enkele aanhalingsteken een apostrof. Een identifier moet beginnen met een letter of een onderstrepingsteken. Na een `-` of een `'` moet een letter komen. Hier zijn nog een paar correcte identifiers:

```raku
$___

$a'b'c

$my-name

$address2
```

Nogmaals, jij kiest de namen. Maar sommige namen lijken op een geheime code. Het is waarschijnlijk een slecht idee om zulke namen expres te kiezen.

## Unicode tekens

Eigenlijk zijn er veel meer letters en cijfers. Unicode heeft eigenschappen voor elk teken. Die zeggen of het teken een letter of een decimaal cijfer is. Raku gebruikt deze eigenschappen. Deze variabelen zijn bijvoorbeeld correct in Raku:

```raku
$привет

$駱駝道

$αβγ

$Δ۲ # waarbij ۲ een cijfer is
```

{% include nav.html %}
