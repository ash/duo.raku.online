---
title: 'Exceptiones per `try` capere'
translations_gpt:
---

{% include menu.html %}

Interdum aliquid in programmate Raku male cedit. Exempli gratia, archivum deest, aut codex `die` vocat. Tum programma errorem iacit. Talem errorem _exceptionem_ vocamus. Si nullus codex exceptionem tractat, programma sistit. Hoc ex more fit. Clausula `try` hic adiuvat. Est clausula codicis cum verbo `try` ante eam. Codex in hac clausula deficere potest. Sed programma non ruit.

Codicem qui deficere potest in clausulam `try` ponis. Fortasse codex intra clausulam exceptionem iacit. Tum clausula eo loco desinit. Sed programma pergit:

```raku
my $result = try {
    die 'Boom!';
};

say "Still works";
```

`try` capit `die`. Itaque programma non ruit. Recta ad enuntiatum sequens pergit. Imprimit:

```
Still works
```

Hic clausula deficit. Tum valorem indefinitum dat. Itaque `$result` indefinitus est:

```raku
say $result.defined; # False
```

Raku exceptionem captam in variabili speciali `$!` servat. Nuntium exceptionis inde legere potes:

```raku
say $!.message; # Boom!
```

Itaque `try` cum errore fatali adiuvat. Sine `try` talis error programma sistit. Cum `try` programma tuum errorem inspicere potest. Deinde ad eum reagere potest. Quid si clausula sine exceptione currit? Tum `$result` valorem clausulae continet. Hoc casu `$!` indefinitus est.

{% include nav.html %}
