---
title: Modulos creare
translations_gpt:
---

{% include menu.html %}

Cum programmata crescunt, iuvat ea in partes dividere quas iterum adhibere potes. Unitas codicis in proprio archivo est _modulus_. Alia programmata eum onerare et adhibere possunt.

Archivum moduli extensionem `.rakumod` habet. Incipit a `unit module`, quod modulo nomen dat. Subprogrammata intus ex more privata sunt. Ut unum cum codice communices qui modulo utitur, id proprietate `is export` nota.

Ecce modulus in archivo nomine `Greeting.rakumod`:

```raku
unit module Greeting;

sub hello($name) is export {
    return "Hello, $name!";
}
```

Subprogramma `hello` `is export` habet, itaque quodlibet programma quod modulo utitur id videre potest. Sine `is export`, subprogramma modulo privatum maneret.

Modulus etiam data per variabiles `our` communicare potest. Alius codex eas per nomen moduli attingere potest. Ut numerum versionis ad `Greeting` addas, una linea nova in archivo satis est:

```raku
our $version = '1.0';
```

Cum haec linea in `Greeting.rakumod` est, valor ut `$Greeting::version` praesto est. Hoc operatur ubicumque modulus oneratur.

Argumenta sequentia ostendunt [quomodo programma talem modulum oneret](/la/advanced/modules-basics/using-modules). Etiam explicant quid exacte programma ex eo accipiat.

{% include nav.html %}
