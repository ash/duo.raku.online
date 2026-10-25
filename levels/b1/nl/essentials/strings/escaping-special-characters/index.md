---
title: Speciale tekens escapen
---

{% include menu.html %}

Stel je voor dat je een prijslabel wilt afdrukken. Je bewaart de naam van het product en de prijs in twee scalaire variabelen.

```raku
my $product = 'Electriciteit';
my $price = 3.14;
```

Hoe druk je het label af als de prijs in dollars is? De output moet `Electriciteit kost $3.14` zijn. Maar in strings met dubbele aanhalingstekens laat een dollarteken zien dat een variabele geïnterpoleerd moet worden. Om het `$`-teken zelf af te drukken, moet je het escapen:

```raku
say "$product kost \$$price";
```

Natuurlijk kun je het escapen van `$` ook vermijden met stringconcatenatie:

```raku
say $product ~ ' kost $' ~ $price;
```

Deze versie print precies dezelfde string. Maar interpolatie ziet er natuurlijker uit en is makkelijker te lezen. Let op de string met enkele aanhalingstekens `' kost $'`. Daarin wordt het `$`-teken niet geïnterpoleerd en ook niet geëscapet. Dat is het belangrijkste verschil. Speciale tekens in enkele aanhalingstekens verschijnen zoals ze zijn.

In strings met dubbele aanhalingstekens hebben nog een paar tekens een speciale betekenis:

`\$` | Dollarteken
`\n` | Nieuwe regel
`\r` | Wagenretour
`\t` | Horizontale tab
`\"` | Dubbel aanhalingsteken
`\\` | Backslash

Het soort aanhalingstekens rond een string bepaalt hoe Raku speciale tekens behandelt. Bekijk deze twee voorbeelden:

```raku
say 'Een\nTwee';
say "Drie\nVier";
```

Als je dit programma uitvoert, verschijnt de eerste string ongewijzigd, op één regel. Maar de tweede string wordt in twee stukken gesplitst:

    Een\nTwee
    Drie
    Vier

In dubbele aanhalingstekens behandelt Raku de speciale reeks `\n` als een teken voor een nieuwe regel. In enkele aanhalingstekens zijn het gewoon twee normale tekens: `\` en `n`.

Er is een interessante uitzondering voor `'` en `\`. In enkele aanhalingstekens kun je een enkel aanhalingsteken escapen met een `\` ervoor:

```raku
say '\''; # '
```

Als er een enkel aanhalingsteken na een backslash komt, moet je de backslash ook escapen:

```raku
say 'a\b\c\\'; # a\b\c\
```

{% include nav.html %}
