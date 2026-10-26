---
title: Export pittacia
translations_gpt:
---

{% include menu.html %}

Nota subprogramma cum `is export`. Tum in gregem exportationis _praedefinitum_ moduli it. Simplex `use` nomina ex hoc grege adducit. Etiam `is export` _tesseram_ dare potes. Tesseris exportationes in greges cum nominibus ponis. Tum quodque programma gregem sumit quem vult.

Tesseram in parenthesibus post `is export` scribis:

```raku
unit module Greeting;

sub hello($name)   is export            { "Hello, $name!" }
sub goodbye($name) is export(:partings) { "Goodbye, $name!" }
```

`hello` tesseram non habet. Itaque in grege praedefinito est. `goodbye` tesseram `:partings` habet.

Simplex `use` solum gregem praedefinitum importat:

```raku
use Greeting;      # hello praesto est; goodbye non est
```

Nunc tesseram nomina. Tum `use` illum gregem pro eo importat. Hoc fortasse mirum tibi est. Gregem praedefinitum _non_ etiam importat:

```raku
use Greeting :partings; # goodbye praesto est; hello non est
```

Cum `:partings` exacte hunc gregem accipis. Visne omnes exportationes moduli? Tum tessera inbuilta `:ALL` utere:

```raku
use Greeting :ALL; # et hello et goodbye
```

Duas tesseras speciales nosse bonum est. Omnis modulus `:ALL` sustinet. Omnes exportationes moduli importat. `:MANDATORY` in proceduram ponere potes. Tum procedura semper importatur. Non refert quam tesseram vocans eligat.

Re vera quaeque tessera est fasciculus. Intra fasciculum `EXPORT` moduli est. Exemplum est `Greeting::EXPORT::partings`. [Introspectio modulorum](/la/advanced/module-introspection) exacte hos fasciculos enumerat. Tesseris magnus modulus gregem praedefinitum parvum servare potest. Programma tamen plures facultates petere potest.

{% include nav.html %}
