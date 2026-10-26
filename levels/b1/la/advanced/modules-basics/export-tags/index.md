---
title: Export pittacia
translations_gpt:
---

{% include menu.html %}

Si subprogramma `is export` notas, id in gregem exportationis _praedefinitum_ moduli venit. Haec sunt nomina quae simplex `use` adducit. Etiam `is export` _tesseram_ dare potes. Tesserae exportationes in greges nominatos disponunt. Tum quodque programma gregem eligere potest quem vult.

Tessera in parenthesibus post `is export` scribitur:

```raku
unit module Greeting;

sub hello($name)   is export            { "Hello, $name!" }
sub goodbye($name) is export(:partings) { "Goodbye, $name!" }
```

`hello` tesseram non habet, itaque ad gregem praedefinitum pertinet. `goodbye` tesseram `:partings` habet.

Simplex `use` solum gregem praedefinitum importat:

```raku
use Greeting;      # hello praesto est; goodbye non est
```

Si tesseram nominas, `use` illum gregem pro eo importat. Quod fortasse mirum est, gregem praedefinitum _non_ etiam importat:

```raku
use Greeting :partings; # goodbye praesto est; hello non est
```

Cum `:partings` petis, exacte illum gregem accipis. Ut omnia importes quae modulus exportat, tessera inbuilta `:ALL` utere:

```raku
use Greeting :ALL; # et hello et goodbye
```

Sunt duae tesserae speciales quas utile est nosse. Omnis modulus `:ALL` sustinet, quae omnes eius exportationes importat. `:MANDATORY` in proceduram ponere potes quae semper importari debet. Non refert quam tesseram vocans eligat.

Quaeque tessera re vera est fasciculus intra fasciculum `EXPORT` moduli, exempli gratia `Greeting::EXPORT::partings`. Hoc est exacte quod [introspectio modulorum](/la/advanced/module-introspection) enumerat. Tesseris maior modulus seriem exportationum praedefinitam parvam servare potest. Tamen alias facultates offerre potest cum programma eas petit.

{% include nav.html %}
