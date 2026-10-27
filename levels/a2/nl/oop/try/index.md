---
title: Excepties vangen met `try`
translations_gpt:
---

{% include menu.html %}

Soms gaat er iets mis in een Raku-programma. Er ontbreekt bijvoorbeeld een bestand, of de code roept `die` aan. Dan werpt het programma een fout. Zo'n fout heet een _exceptie_. Als geen code de exceptie afhandelt, stopt het programma. Dat is de standaard. Het `try`-blok helpt hier. Dat is een codeblok met het woord `try` ervoor. Code in dit blok kan mislukken. Maar het programma crasht niet.

Je zet de code die kan mislukken in een `try`-blok. Misschien werpt de code een exceptie in het blok. Dan stopt het blok op die plek. Maar het programma gaat door:

```raku
my $result = try {
    die 'Boom!';
};

say "Still works";
```

De `try` vangt de `die`. Dus crasht het programma niet. Het gaat meteen door naar de volgende opdracht. Het drukt af:

```
Still works
```

Hier mislukt het blok. Dan geeft het een ongedefinieerde waarde. Dus is `$result` ongedefinieerd:

```raku
say $result.defined; # False
```

Raku bewaart de gevangen exceptie in de bijzondere variabele `$!`. Daar kun je de melding van de exceptie uit lezen:

```raku
say $!.message; # Boom!
```

`try` helpt dus bij een fatale fout. Zonder `try` stopt zo'n fout het programma. Met `try` kan je programma naar de fout kijken. Dan kan het erop reageren. Wat als het blok zonder exceptie draait? Dan bevat `$result` de waarde van het blok. In dat geval is `$!` ongedefinieerd.

{% include nav.html %}
