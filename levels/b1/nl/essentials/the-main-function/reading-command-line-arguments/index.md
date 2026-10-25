---
title: Lezen van commandoregelargumenten
---

{% include menu.html %}

De `MAIN`-functie laat duidelijk zien waar het programma begint, en dat is handig. Maar hij is ook handig omdat zijn argumenten de waarden van de commandoregel krijgen.

Je kunt commandoregelargumenten op twee manieren lezen. De eerste is de [`@*ARGS` array](/nl/essentials/positionals/args-array), die we al hebben gebruikt. Laten we nu naar de tweede manier kijken.

Hier is een programma dat twee getallen optelt.

```raku
sub MAIN($a, $b) {
    say $a + $b;
}
```

Zo kun je het programma uitvoeren. Het drukt de som van zijn twee argumenten af:

```console
$ raku t.raku 123 45
168
```

Net als elke andere functie kan `MAIN` standaardwaarden voor zijn argumenten hebben. Dat kan voor sommige ervan, of zelfs voor allemaal. Bijvoorbeeld:

```raku
sub MAIN($a, $b = 100) {
    say $a + $b;
}
```

Als je het tweede argument niet geeft, gebruikt het programma de standaardwaarde:

```console
$ raku t.raku 15
115
```

{% include nav.html %}
