---
title: Rationale getallen
---

{% include menu.html %}

Rationale getallen zijn een uniek kenmerk van Raku. Hun gegevenstype is `Rat`.

Binnen Raku is een rationaal getal een breuk. Die heeft twee gehele delen. De teller staat boven, en de noemer staat onder. Dus kun je getallen als 1/3 makkelijk bewaren. Ze blijven exact.

Er zijn een paar manieren om een `Rat` getal in Raku te schrijven:

```raku
my $x = 1/2;
my $y = <2/3>;
```

Let op: de schuine streep is hier een deel van hoe je het getal schrijft. Het is geen delingsoperator. Dus `1/2` betekent niet ‘deel 1 door 2’. Maar Raku drukt rationale getallen af als decimale getallen of gehele getallen:

```raku
say 1/2; # 0.5
say 3/4; # 0.75
```

De tekst na het `#` symbool is een commentaar. De compiler negeert die tekst. In de cursus laten deze commentaren de uitvoer van het programma zien.

## Decimale vorm

Dit is belangrijk om te weten. Je kunt een getal in decimale vorm schrijven, bijvoorbeeld `0.5`. Dan maakt Raku een `Rat` getal. Het is geen geheel getal. Maar het is ook geen drijvendekommagetal. Andere talen noemen zulke getallen `float` of `double`. Het is nog steeds een rationaal getal!

Bekijk dit voorbeeld:

```raku
say 0.1 + 0.2 - 0.3;
```

Een programmeertaal kan voor deze berekeningen met drijvende komma rekenen. Dan is het resultaat niet 0. De website [0.30000000000000004.com](https://0.30000000000000004.com) heeft een volledige lijst van zulke voorbeelden. Daarin geeft rekenen met drijvende komma niet het resultaat dat je verwacht.

Maar Raku drukt precies `0` af. Waarom? Raku ziet `0.1`, `0.2` en `0.3` als rationale getallen. Vanbinnen bewaart Raku ze als `1/10`, `2/10` en `3/10`. Voer de code uit vanaf de opdrachtregel en controleer het:

```console
$ raku -e 'say 0.1 + 0.2 - 0.3'
0
```

## Unicode vormen

Je kunt ook Unicode-tekens voor breuken gebruiken, zoals `½`, `¼` of `¾`. Misschien zijn ze niet altijd makkelijk te typen op een toetsenbord. Maar ze zijn precies dezelfde waarden als hun ASCII-versies. Een ASCII-versie kan een breuk of een decimaal getal zijn:

`½` | `1/2` | `<1/2>` | `0.5`
`¼` | `1/4` | `<1/4>` | `0.25`
`¾` | `3/4` | `<3/4>` | `0.75`

Sommige breuken, zoals `1/3`, hebben minder vormen: alleen `⅓` of `<1/3>`. Een decimale vorm werkt daar niet. Die heeft een oneindig aantal cijfers nodig.

{% include nav.html %}
