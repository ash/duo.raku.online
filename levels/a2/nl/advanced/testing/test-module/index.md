---
title: De Test-module
translations_gpt:
---

{% include menu.html %}

Om de testtools te krijgen, schrijf je `use Test`. De eenvoudigste controle is `ok`. Die slaagt als de voorwaarde waar is. Elke controle kan ook een beschrijving hebben:

```raku
use Test;

ok 1 == 1, 'one equals one';
ok 2 > 1,  'two is greater';

done-testing;
```

Voer dit programma uit. Het print het resultaat in het standaardformaat voor tests. Dit formaat heet _TAP_:

```
ok 1 - one equals one
ok 2 - two is greater
1..2
```

Voor elke controle die slaagt, zie je `ok` met het nummer en de beschrijving. Een controle die faalt, toont `not ok`. De laatste regel, `1..2`, is het _plan_. Het zegt hoeveel tests er hebben gedraaid. De aanroep van `done-testing` aan het eind print dit plan automatisch.

Soms verwacht je een bepaalde waarde. Dan is `is` duidelijker dan `ok`. Als de test faalt, toont `is` twee waarden. Het toont de waarde die je verwacht en de waarde die je krijgt:

```raku
use Test;

is 2 + 2, 4, 'addition works';

done-testing;
```

Dit print `ok 1 - addition works`. Laten we nu kijken hoe `is` een fout meldt. Geef `is` een verkeerde verwachte waarde:

```raku
use Test;

is 2 + 2, 5, 'addition works';

done-testing;
```

Nu faalt de controle. De uitvoer toont precies wat er fout is:

```
not ok 1 - addition works
# Failed test 'addition works'
# at test.raku line 3
# expected: '5'
#      got: '4'
1..1
# You failed 1 test of 1
```

De regel `not ok` toont de fout. Eronder leggen meer regels het probleem uit. Ze tonen de waarde die je verwacht en de waarde die je krijgt. Als je dus een bepaalde waarde nodig hebt, helpt `is` meer dan alleen `ok`.

Met `ok`, `is` en `done-testing` kun je al een nuttig testbestand schrijven. Het volgende onderwerp toont [de andere vergelijkingen](/nl/advanced/testing/comparisons).

{% include nav.html %}
