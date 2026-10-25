---
title: String lengte
---

{% include menu.html %}

Omdat strings in Raku Unicode zijn, worden sommige eenvoudige dingen iets moeilijker. Of je moet er in elk geval beter over nadenken. Neem bijvoorbeeld de lengte van een string. Is dat het aantal karakters of het aantal bytes? En wat als hetzelfde karakter in verschillende strings uit verschillende delen bestaat? Is het dan nog steeds één karakter?

## Lengte in karakters

Om te weten hoeveel karakters een string heeft, gebruik je de `chars` _methode_:

```raku
my $str = '你好世界';
say $str.chars;
```

We praten later over methoden, maar we moeten ze nu al kunnen gebruiken. In Raku kun je methoden aanroepen op bijna elk object, ook op strings en scalaire variabelen. Om een methode aan te roepen, gebruik je een punt. Hier roepen we de methode dus aan op een variabele die een string bewaart: `$str.chars`.

De Chinese groet 你好世界 heeft vier karakters. En `$str.chars` retourneert precies `4`.

## Lengte in bytes

Ter informatie: zo vind je de lengte van een string in bytes. In dit geval moet je weten welke codering voor de string wordt gebruikt:

```raku
my $str = '你好世界';
say $str.encode('UTF-8').bytes;
```

Deze keer print het programma `12`. Let op dat de tweede regel twee gekoppelde methode-aanroepen heeft.

## Lengte in codepunten

Om het plaatje compleet te maken, is hier nog een nuttige methode voor stringlengte: `codes`. Die retourneert het aantal codepunten in de string, nadat de string is genormaliseerd. In veel gevallen retourneren `codes` en `chars` hetzelfde getal. Maar in een paar zeldzame gevallen geven de twee methoden verschillende resultaten. Je kunt bijvoorbeeld ‘een onmogelijk’ karakter bouwen. Daar is in de hele Unicode-ruimte geen enkel codepunt voor.

```raku
say 'x̨'.chars;
say 'x̨'.codes;
```

Dit karakter, `x̨`, heeft geen eigen codepunt. Het kan alleen uit twee delen worden gebouwd. Dat zijn de kleine letter `x` en het combinatieteken `0x0328`. Het is dus nog steeds één karakter, maar er zijn twee codepunten. Daarom print het programma:

    1
    2

{% include nav.html %}
