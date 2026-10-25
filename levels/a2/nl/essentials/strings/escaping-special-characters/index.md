---
title: Speciale tekens escapen
---

{% include menu.html %}

Stel je voor dat je een prijslabel wilt afdrukken. De naam van het product staat in een scalaire variabele. De prijs staat in een andere scalaire variabele.

```raku
my $product = 'Electriciteit';
my $price = 3.14;
```

De prijs is in dollars. Hoe druk je het label dan af? Je wilt deze output: `Electriciteit kost $3.14`. Maar in dubbele aanhalingstekens staat een dollarteken voor een variabele. Raku interpoleert deze variabele. Om de `$` zelf af te drukken, escape je hem met een backslash:

```raku
say "$product kost \$$price";
```

Je kunt ook stringconcatenatie gebruiken. Dan hoef je `$` niet te escapen:

```raku
say $product ~ ' kost $' ~ $price;
```

Deze versie print precies dezelfde string. Maar interpolatie ziet er natuurlijker uit. Het is makkelijker te lezen. Kijk naar de string in enkele aanhalingstekens: `' kost $'`. Hier interpoleert Raku het `$`-teken niet. Raku escapet het ook niet. Dit is het belangrijkste verschil. In enkele aanhalingstekens blijven speciale tekens zoals ze zijn.

Hier zijn nog een paar speciale tekens. Ze hebben een speciale betekenis in strings met dubbele aanhalingstekens:

`\$` | Dollarteken
`\n` | Nieuwe regel
`\r` | Wagenretour (terug naar het begin van de regel)
`\t` | Horizontale tab
`\"` | Dubbel aanhalingsteken
`\\` | Backslash

De aanhalingstekens rond een string zijn belangrijk. Ze bepalen wat Raku met speciale tekens doet. Kijk naar deze twee voorbeelden:

```raku
say 'Een\nTwee';
say "Drie\nVier";
```

Voer dit programma uit. De eerste string blijft zoals hij is, op één regel. De tweede string staat nu in twee delen:

    Een\nTwee
    Drie
    Vier

In dubbele aanhalingstekens is `\n` een speciale reeks. Raku maakt er een teken voor een nieuwe regel van. In enkele aanhalingstekens is `\n` gewoon twee normale tekens: `\` en `n`.

Er is een interessante uitzondering voor `'` en `\`. In enkele aanhalingstekens kun je een enkel aanhalingsteken escapen. Zet er een `\` voor:

```raku
say '\''; # '
```

Soms komt er een enkel aanhalingsteken na een backslash. Dan moet je de backslash ook escapen:

```raku
say 'a\b\c\\'; # a\b\c\
```

{% include nav.html %}
