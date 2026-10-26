---
title: Tempore exsecutionis onerare
translations_gpt:
---

{% include menu.html %}

## Problema

Ecce modulus, `Greeting.rakumod`. Subprogramma `hello` exportat:

```raku
unit module Greeting;

sub hello($name) is export {
    "Hello, $name!"
}
```

Onera hunc modulum per `require`, non per `use`. Tum programma eum **tempore exsecutionis** onerat, dum programma currit. `require` nomina sponte non importat. Itaque nomen quod vis enumera, sic: `require Greeting <&hello>;`. Deinde voca `hello('Sam')` et effectum imprime.

Nunc ostende cur onerare tempore exsecutionis utile sit. Pone `require` intra `sub MAIN` cum vexillo `--quiet`. Programma modulum *solum* onerat cum salutationem re vera vis. Cum `--quiet`, programma modulum omnino non tangit. Tantum `Silence.` imprimit.

## Exemplum

Programma curre cum modulo in semita quaesitionis. Id imprimit:

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Solutio

✅ [Vide solutionem](solution)

{% include nav.html %}
