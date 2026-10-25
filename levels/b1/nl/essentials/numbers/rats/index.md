---
title: Rationale getallen
---

{% include menu.html %}

Rationale getallen zijn een uniek kenmerk van Raku. Ze hebben hun eigen gegevenstype, `Rat`.

Intern is een rationaal getal een breuk. Het heeft twee gehele delen, de teller en de noemer. Dat betekent dat getallen zoals 1/3 exact kunnen worden opgeslagen.

Er zijn verschillende manieren om een `Rat` getal in een Raku-programma te schrijven:

```raku
my $x = 1/2;
my $y = <2/3>;
```

Merk op dat de schuine streep hier een deel is van de manier waarop het getal geschreven wordt. Het is geen delingsoperator. Dus `1/2` betekent niet dat je 1 door 2 deelt. Maar als je rationale getallen afdrukt, zien ze eruit als decimale getallen of gehele getallen:

```raku
say 1/2; # 0.5
say 3/4; # 0.75
```

Alles na het `#` symbool op een regel is een commentaar, dat de compiler negeert. In deze cursus gebruiken we zulke commentaren om te laten zien wat het programma afdrukt.

## Decimale vorm

Het is belangrijk om dit te begrijpen. Als je een getal in decimale vorm schrijft, zoals `0.5`, maakt Raku een `Rat` getal. Het is geen geheel getal, en het is ook geen drijvendekommagetal. In andere talen heten zulke getallen `float` of `double`. Het is nog steeds een rationaal getal!

Kijk eens naar het volgende voorbeeld:

```raku
say 0.1 + 0.2 - 0.3;
```

Als een taal hier met drijvende komma rekent, is het resultaat niet 0. De website [0.30000000000000004.com](https://0.30000000000000004.com) heeft een volledige lijst van voorbeelden. In al die voorbeelden geeft rekenen met drijvende komma niet het verwachte resultaat.

Maar Raku drukt exact `0` af. Dat komt doordat het `0.1`, `0.2` en `0.3` als rationale getallen behandelt. Intern bewaart het ze als `1/10`, `2/10` en `3/10`. Voer het uit vanaf de opdrachtregel om dit te controleren:

```console
$ raku -e 'say 0.1 + 0.2 - 0.3'
0
```

## Unicode vormen

Je kunt ook Unicode-tekens voor breuken gebruiken, zoals `½`, `¼` of `¾`. Ze zijn waarschijnlijk niet altijd makkelijk te typen op een toetsenbord. Maar deze breuken zijn precies dezelfde waarden als hun ASCII-versies. Die kun je schrijven als een breuk of als een decimaal getal:

`½` | `1/2` | `<1/2>` | `0.5`
`¼` | `1/4` | `<1/4>` | `0.25`
`¾` | `3/4` | `<3/4>` | `0.75`

Voor sommige breuken, zoals `1/3`, heb je minder keuze: `⅓` of `<1/3>`. Dat komt doordat de decimale vorm een oneindig aantal cijfers nodig zou hebben.

{% include nav.html %}
