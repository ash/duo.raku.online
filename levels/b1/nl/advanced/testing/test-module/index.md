---
title: De Test-module
translations_gpt:
---

{% include menu.html %}

Je laadt de testtools met `use Test`. De eenvoudigste controle is `ok`, die slaagt als zijn voorwaarde waar is. Elke controle kan ook een beschrijving krijgen:

```raku
use Test;

ok 1 == 1, 'one equals one';
ok 2 > 1,  'two is greater';

done-testing;
```

Als je het uitvoert, print het dit in het standaard testformaat met de naam _TAP_:

```
ok 1 - one equals one
ok 2 - two is greater
1..2
```

Elke controle die slaagt, wordt getoond als `ok` met het nummer en de beschrijving. Een controle die faalt, zou `not ok` tonen. De laatste regel, `1..2`, is het _plan_, dat zegt hoeveel tests er zijn uitgevoerd. De aanroep van `done-testing` aan het eind print dit plan automatisch.

Als je een bepaalde waarde verwacht, is `is` duidelijker dan `ok`. Als de test faalt, toont `is` zowel de verwachte als de werkelijke waarde:

```raku
use Test;

is 2 + 2, 4, 'addition works';

done-testing;
```

Dit print `ok 1 - addition works`. Om te zien hoe `is` een probleem meldt, geef je het een verkeerde verwachte waarde:

```raku
use Test;

is 2 + 2, 5, 'addition works';

done-testing;
```

Nu faalt de controle, en de uitvoer legt precies uit wat er misging:

```
not ok 1 - addition works
# Failed test 'addition works'
# at test.raku line 3
# expected: '5'
#      got: '4'
1..1
# You failed 1 test of 1
```

De regel `not ok` markeert de fout. De regels eronder tonen wat er verwacht werd en wat het programma echt kreeg. Als een bepaalde waarde belangrijk is, is `is` dus nuttiger dan een gewone `ok`.

`ok`, `is` en `done-testing` zijn al genoeg voor een nuttig testbestand. Het volgende onderwerp voegt [de andere vergelijkingen](/nl/advanced/testing/comparisons) toe.

{% include nav.html %}
