---
title: Defaulte valores
---

{% include menu.html %}

Et parametri positionis et nominati valores praedefinitos habere possunt. Si parameter valorem praedefinitum habet, eum in vocatione functionis omittere potes.

## Parametri positionis

Ecce exemplum valoris praedefiniti pro parametro positionis:

```raku
sub saluta($nomen = 'Mundus') {
    say "Salve, $nomen!";
}

saluta('Merinda');
saluta();
```

In prima vocatione nomen est solum argumentum, itaque eventus est `Salve, Merinda!`. Secunda vocatio valorem praedefinitum adhibet et `Salve, Mundus!` imprimit.

Si functio plures parametros habet, solum ultimi valores praedefinitos habere possunt:

```raku
sub f($a, $b, $c = 42, $d = 50) { . . . } # rectum
# sub f($a = 10, $b = 20, $c, $d) { . . . } # FALSUM
```

## Parametri nominati

Valores praedefinitos pro parametris nominatis eadem syntaxi statuis:

```raku
sub saluta(:$nomen = 'Mundus') {
    say "Salve, $nomen!";
}

saluta(nomen => 'Merinda'); # Salve, Merinda!
saluta(); # Salve, Mundus!
```

Ordo parametrorum nominatorum non refert. Itaque quilibet eorum valorem praedefinitum habere potest, etiam primus:

```raku
sub saluta(:$salutatio = 'Salve', :$nomen) {
    say "$salutatio, $nomen!";
}

saluta(nomen => 'Alla'); # Salve, Alla!
```

{% include nav.html %}
