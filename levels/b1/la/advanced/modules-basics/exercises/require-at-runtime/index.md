---
title: Tempore exsecutionis onerare
translations_gpt:
---

{% include menu.html %}

## Problema

Modulum `Greeting.rakumod` habes, qui subprogramma `hello` exportat:

```raku
unit module Greeting;

sub hello($name) is export {
    "Hello, $name!"
}
```

Onera hunc modulum per `require` loco `use`. Tum **tempore exsecutionis** oneratur. `require` nomina sponte non importat. Itaque symbolum quod vis enumerare debes, per `require Greeting <&hello>;`. Deinde voca `hello('Sam')` et effectum imprime.

Haec exercitatio etiam ostendit cur onerare tempore exsecutionis utile sit. Pone `require` intra `sub MAIN` cum vexillo `--quiet`. Tum modulus *solum* oneratur cum salutatio re vera requiritur. Cum `--quiet`, programma `Silence.` imprimit et modulum omnino numquam tangit.

## Exemplum

Si id cum modulo in semita quaesitionis curris, programma imprimit:

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Solutio

✅ [Vide solutionem](solution)

{% include nav.html %}
