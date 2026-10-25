---
title: Standaardwaarden
---

{% include menu.html %}

Positionele en benoemde parameters kunnen standaardwaarden hebben. Een parameter met een standaardwaarde is niet verplicht. Je kunt hem weglaten als je de functie aanroept. Dan krijgt de parameter zijn standaardwaarde.

## Positionele parameters

Hier is een voorbeeld. De functie heeft een positionele parameter met een standaardwaarde:

```raku
sub greet($name = 'World') {
    say "Hello, $name!";
}

greet('Merinda');
greet();
```

De eerste aanroep geeft een naam door als enig argument. Daarom print hij `Hello, Merinda!`. De tweede aanroep gebruikt de standaardwaarde. Hij print `Hello, World!`.

Soms heeft een functie meer dan één parameter. Dan moeten de standaardwaarden aan het einde van de lijst staan:

```raku
sub f($a, $b, $c = 42, $d = 50) { . . . } # correct
# sub f($a = 10, $b = 20, $c, $d) { . . . } # FOUT
```

## Benoemde parameters

Benoemde parameters krijgen op dezelfde manier standaardwaarden:

```raku
sub greet(:$name = 'World') {
    say "Hello, $name!";
}

greet(name => 'Merinda'); # Hello, Merinda!
greet(); # Hello, World!
```

De volgorde van benoemde parameters maakt niet uit. Dus elke parameter kan een standaardwaarde hebben. Zelfs de eerste in de lijst kan er een hebben:

```raku
sub greet(:$greeting = 'Hello', :$name) {
    say "$greeting, $name!";
}

greet(name => 'Alla'); # Hello, Alla!
```

{% include nav.html %}
