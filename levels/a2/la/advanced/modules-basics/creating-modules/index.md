---
title: Modulos creare
translations_gpt:
---

{% include menu.html %}

Programmata cum tempore crescunt. Tum utile est ea in partes dividere. Has partes iterum adhibere potes. Talis pars codicis est _modulus_. In proprio archivo est. Alia programmata eum onerare et adhibere possunt.

Archivum moduli extensionem `.rakumod` habet. Incipit a `unit module` et nomine moduli. Plerumque subprogrammata in modulo privata sunt. Solus modulus ipse ea adhibere potest. Visne subprogramma cum alio codice communicare? Nota id proprietate `is export`.

Ecce modulus in archivo `Greeting.rakumod`:

```raku
unit module Greeting;

sub hello($name) is export {
    return "Hello, $name!";
}
```

Subprogramma `hello` `is export` habet. Itaque omne programma quod modulo utitur id videre potest. Subprogramma sine `is export` privatum manet. Solus modulus ipse id adhibere potest.

Modulus etiam data communicare potest. Ad hoc variabiles `our` adhibet. Alius codex ad eas per nomen moduli pervenire potest. Numerum versionis ad `Greeting` addamus. Tantum unam lineam novam in archivo requirimus:

```raku
our $version = '1.0';
```

Nunc `Greeting.rakumod` hanc lineam habet. Itaque valor ut `$Greeting::version` praesto est. Hoc operatur ubicumque modulum oneras.

Argumenta sequentia ostendunt [quomodo programma talem modulum oneret](/la/advanced/modules-basics/using-modules). Etiam ostendunt quid programma ex eo accipiat.

{% include nav.html %}
