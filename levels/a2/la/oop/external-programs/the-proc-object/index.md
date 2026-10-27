---
title: Obiectum Proc
translations_gpt:
---

{% include menu.html %}

Omnis vocatio `run` vel `shell` obiectum `Proc` reddit. Est parva tabula de programmate. Tibi dicit quod programma cucurrerit et quomodo finierit. In argumentis superioribus per tractabulum eius `.out` exitum legimus. Sed `Proc` plus continet.

Pars utilissima est **codex exeundi**. Est parvus numerus integer. Programma eum ei reddit qui id incepit. Hoc numero programma dicit an operatum sit. `0` successum significat. Quilibet alius numerus defectum significat. Ipsum programma hunc codicem defectus eligit. `.exitcode` tibi hunc numerum dat:

```raku
my $proc = run 'sh', '-c', 'exit 3';
say $proc.exitcode; # 3
```

Saepe tantum quaestionem ita-an-non ponis. Operatumne est? Ad hoc `Proc` verum est cum codex exeundi `0` est. Aliter falsum est. Itaque `Proc` directe probare potes:

```raku
my $proc = run 'ls', '/', :out;
$proc.out.slurp(:close);
say $proc ?? 'ok' !! 'failed'; # ok
```

`Proc` etiam imperatum meminit quod incepit. Id in `.command` invenis:

```raku
my $proc = run 'echo', 'hi', :out;
$proc.out.slurp(:close);
say $proc.command; # (echo hi)
```

De una re cave. Interdum imperatum deficit. Quid si `Proc` quod reddit simpliciter **neglegis**? Tum Raku exceptionem excitat. Exceptio est error qui programma sistit. Raku defectum latere non sinit:

```raku
run 'sh', '-c', 'exit 1';
# moritur: The spawned command 'sh' exited unsuccessfully (exit code: 1, signal: 0)
```

Codex exeundi alius quam `0` plerumque problema significat. Itaque `Proc` deficiens exceptionem iacit si id abicis. Hoc fit cum `Proc` extra circumscriptionem exit. Tum nullus codex id iam attingere potest. Causa non est quod codicem exeundi non probas. Causa est quod effectum *abicis*. Simpliciter `Proc` in variabilem pone. Hoc satis est ut exceptionem vites. Ne variabilem quidem iterum inspicere debes.

```raku
my $proc = run 'sh', '-c', 'exit 1'; # nullus error, quamquam defecit
# …et $proc numquam iterum adhibetur
```

Itaque *exspectasne* imperatum deficere posse? Tum `Proc` eius serva. Cum scire vis quid acciderit, `.exitcode` inspice. Aut `Proc` ut valorem Booleanum proba.

{% include nav.html %}
