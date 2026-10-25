---
title: Lezen van commandoregelargumenten
---

{% include menu.html %}

De `MAIN`-functie is om twee redenen handig. Ten eerste laat hij duidelijk zien waar het programma begint. Ten tweede heeft hij argumenten. Die krijgen hun waarden van de commandoregel.

Er zijn twee manieren om commandoregelargumenten te lezen. Eén manier is de [`@*ARGS` array](/nl/essentials/positionals/args-array). Die hebben we al gebruikt. Laten we nu naar de tweede manier kijken.

Kijk naar dit programma. Het telt twee getallen op.

```raku
sub MAIN($a, $b) {
    say $a + $b;
}
```

Voer het programma zo uit. Het drukt de som van zijn twee argumenten af:

```console
$ raku t.raku 123 45
168
```

Net als elke andere functie kan `MAIN` standaardwaarden voor zijn argumenten hebben. Sommige argumenten kunnen ze hebben. Zelfs alle argumenten kunnen ze hebben. Bijvoorbeeld:

```raku
sub MAIN($a, $b = 100) {
    say $a + $b;
}
```

Soms is er geen tweede argument. Dan gebruikt het programma de standaardwaarde:

```console
$ raku t.raku 15
115
```

{% include nav.html %}
