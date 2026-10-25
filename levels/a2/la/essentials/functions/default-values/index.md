---
title: Defaulte valores
---

{% include menu.html %}

Parametri positionis et nominati valores praedefinitos habere possunt. Parameter cum valore praedefinito non necessarius est. Eum omittere potes cum functionem vocas. Tum parameter valorem suum praedefinitum accipit.

## Parametri positionis

Ecce exemplum. Functio parametrum positionis cum valore praedefinito habet:

```raku
sub saluta($nomen = 'Mundus') {
    say "Salve, $nomen!";
}

saluta('Merinda');
saluta();
```

Prima vocatio nomen ut solum argumentum dat. Itaque `Salve, Merinda!` imprimit. Secunda vocatio valorem praedefinitum adhibet. Ea imprimit `Salve, Mundus!`.

Interdum functio plus quam unum parametrum habet. Tum valores praedefiniti in fine indicis esse debent:

```raku
sub f($a, $b, $c = 42, $d = 50) { . . . } # rectum
# sub f($a = 10, $b = 20, $c, $d) { . . . } # FALSUM
```

## Parametri nominati

Parametri nominati eodem modo valores praedefinitos accipiunt:

```raku
sub saluta(:$nomen = 'Mundus') {
    say "Salve, $nomen!";
}

saluta(nomen => 'Merinda'); # Salve, Merinda!
saluta(); # Salve, Mundus!
```

Ordo parametrorum nominatorum non refert. Itaque quilibet eorum valorem praedefinitum habere potest. Etiam primus in indice eum habere potest:

```raku
sub saluta(:$salutatio = 'Salve', :$nomen) {
    say "$salutatio, $nomen!";
}

saluta(nomen => 'Alla'); # Salve, Alla!
```

{% include nav.html %}
