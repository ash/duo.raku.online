---
title: String lengte
---

{% include menu.html %}

Raku-strings zijn Unicode-strings. Daardoor zijn sommige eenvoudige dingen iets moeilijker. Of je moet er in elk geval meer over nadenken. Neem bijvoorbeeld de lengte van een string. Is dat het aantal karakters? Of is het het aantal bytes? En soms heeft hetzelfde karakter verschillende delen in verschillende strings. Is het dan nog steeds één karakter?

## Lengte in karakters

De `chars` _methode_ geeft de lengte van een string in karakters:

```raku
my $str = '你好世界';
say $str.chars;
```

We praten later over methoden. Maar we kunnen ze nu al gebruiken. In Raku kun je methoden aanroepen op bijna elk object. Strings en scalaire variabelen zijn ook objecten. Om een methode aan te roepen, schrijf je een punt. Hier bewaart de variabele een string. We roepen de methode aan op deze variabele: `$str.chars`.

Deze Chinese groet heeft vier karakters: 你好世界. En `$str.chars` geeft precies `4`.

## Lengte in bytes

Dit is alleen ter informatie. Zo krijg je de lengte van een string in bytes. Daarvoor moet je de codering van de string kennen:

```raku
my $str = '你好世界';
say $str.encode('UTF-8').bytes;
```

Deze keer print het programma `12`. Kijk naar de tweede regel. Die heeft twee methode-aanroepen achter elkaar.

## Lengte in codepunten

Om dit onderwerp af te maken, is hier nog een nuttige methode voor stringlengte: `codes`. Die geeft het aantal codepunten in de string. Een codepunt is het nummer van een karakter in Unicode. Voor het tellen normaliseert Raku de string. Het brengt de string in een standaardvorm. Vaak geven `codes` en `chars` hetzelfde resultaat. Maar in een paar zeldzame gevallen geven de twee methoden verschillende resultaten. Je kunt bijvoorbeeld ‘een onmogelijk’ karakter bouwen. De hele Unicode-ruimte heeft er geen enkel codepunt voor.

```raku
say 'x̨'.chars;
say 'x̨'.codes;
```

Het karakter `x̨` heeft geen eigen codepunt. Je kunt het alleen uit twee delen bouwen. Het eerste deel is de kleine letter `x`. Het tweede deel is het combinatieteken `0x0328`. Dat voegt een klein teken aan de letter toe. Het is dus één karakter, maar het heeft twee codepunten. Daarom print het programma dit:

    1
    2

{% include nav.html %}
