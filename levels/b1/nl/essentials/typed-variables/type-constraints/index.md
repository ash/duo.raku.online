---
title: Type beperkingen
---

{% include menu.html %}

Raku heeft een zogenaamd gradueel typesysteem. In de meeste gevallen hoef je je geen zorgen te maken over het type van een variabele. Maar soms wil je een variabele tot één type beperken. Dat kun je doen door het type op te geven, zoals hieronder:

```raku
my Int $var = 42;
```

Nu kun je een andere integer-waarde aan `$var` toewijzen. Maar als je er een string in probeert te zetten, krijg je een uitzondering. Hetzelfde gebeurt zelfs met een drijvende-kommagetal:

```raku
my Int $var = 42;
$var = '314E-2';
```

Dit programma geeft de volgende foutmelding:

    Type check failed in assignment to $var; expected Int but got Str ("314E-2")
      in block <unit> at t.raku line 2

{% include nav.html %}
