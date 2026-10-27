---
title: 'Exceptiones per `try` capere'
translations_gpt:
---

{% include menu.html %}

Cum aliquid in programmate Raku male cedit, _exceptio_ iacitur. Hoc fit, exempli gratia, cum archivum deest aut cum ipse `die` vocas. Ex more exceptio quam nemo tractat programma sistit. Clausula `try` tibi permittit codicem currere qui deficere potest, sine ruina.

Codicem periculosum intra clausulam `try` ponis. Si exceptio intus iacitur, clausula eo loco desinit. Sed programma pergit:

```raku
my $result = try {
    die 'Boom!';
};

say "Still works";
```

`try` capit `die`, itaque programma non ruit. Recta ad enuntiatum sequens pergit et imprimit:

```
Still works
```

Cum clausula ita deficit, valorem indefinitum dat. Itaque `$result` indefinitus est:

```raku
say $result.defined; # False
```

Exceptio capta in variabili speciali `$!` servatur. Nuntium eius inde legere potes:

```raku
say $!.message; # Boom!
```

Itaque `try` errorem fatalem in aliquid vertit quod programma tuum probare et ad quod reagere potest. Si clausula sine ulla exceptione currit, `$result` valorem eius continet et `$!` indefinitus est.

{% include nav.html %}
