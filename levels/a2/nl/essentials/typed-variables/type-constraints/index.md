---
title: Type beperkingen
---

{% include menu.html %}

Raku heeft een zogenaamd gradueel typesysteem. Dat betekent dat je typen alleen kunt gebruiken waar je dat wilt. Meestal hoef je het type van een variabele niet te geven. Maar soms wil je het type van een variabele beperken. Geef het type dan zo op:

```raku
my Int $var = 42;
```

Nu kun je een andere integer-waarde aan `$var` toewijzen. Maar je kunt er geen string in zetten. Je kunt er zelfs geen drijvende-kommagetal in zetten. Als je het probeert, krijg je een uitzondering:

```raku
my Int $var = 42;
$var = '314E-2';
```

Het programma geeft deze foutmelding:

    Type check failed in assignment to $var; expected Int but got Str ("314E-2")
      in block <unit> at t.raku line 2

{% include nav.html %}
