---
title: Excepties vangen met `try`
translations_gpt:
---

{% include menu.html %}

Als er in een Raku-programma iets misgaat, wordt er een _exceptie_ geworpen. Dat gebeurt bijvoorbeeld als een bestand ontbreekt of als je zelf `die` aanroept. Een exceptie die niemand afhandelt, stopt standaard het programma. Met het `try`-blok kun je code draaien die kan mislukken, zonder een crash.

Je zet de riskante code in een `try`-blok. Als er in dat blok een exceptie geworpen wordt, stopt het blok op dat punt. Maar het programma gaat door:

```raku
my $result = try {
    die 'Boom!';
};

say "Still works";
```

De `try` vangt de `die`, dus het programma crasht niet. Het gaat meteen door naar de volgende opdracht en drukt af:

```
Still works
```

Als het blok zo mislukt, geeft het een ongedefinieerde waarde. Dus is `$result` ongedefinieerd:

```raku
say $result.defined; # False
```

De gevangen exceptie wordt in de bijzondere variabele `$!` bewaard. Daar kun je haar melding uit lezen:

```raku
say $!.message; # Boom!
```

`try` maakt van een fatale fout dus iets wat je programma kan controleren en waarop het kan reageren. Als het blok zonder exceptie draait, bevat `$result` zijn waarde en is `$!` ongedefinieerd.

{% include nav.html %}
