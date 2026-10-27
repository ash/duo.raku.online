---
title: Obiectum Proc
translations_gpt:
---

{% include menu.html %}

Omnis vocatio `run` vel `shell` obiectum `Proc` reddit. Est parva tabula quae describit quod programma cucurrerit et quomodo finierit. Argumenta superiora tractabulum eius `.out` adhibuerunt ut exitum legerent. Sed `Proc` plus continet.

Pars utilissima est **codex exeundi**. Parvo numero integro programma ei qui id incepit dicit utrum successerit. `0` successum significat. Quilibet alius numerus est codex defectus quem ipsum programma eligit. `.exitcode` tibi illum numerum dat:

```raku
my $proc = run 'sh', '-c', 'exit 3';
say $proc.exitcode; # 3
```

Plerumque tantum quaestionem ita-an-non ponis: operatumne est? Ad hoc `Proc` simpliciter verum est cum codex exeundi `0` est. Aliter falsum est. Itaque id directe probare potes:

```raku
my $proc = run 'ls', '/', :out;
$proc.out.slurp(:close);
say $proc ?? 'ok' !! 'failed'; # ok
```

`Proc` etiam meminit quod imperatum incepit, in `.command`:

```raku
my $proc = run 'echo', 'hi', :out;
$proc.out.slurp(:close);
say $proc.command; # (echo hi)
```

Una res est quam cavere debes. Si imperatum deficit et `Proc` redditum simpliciter **neglegis**, Raku exceptionem excitat. Defectum inobservatum transire non sinit:

```raku
run 'sh', '-c', 'exit 1';
# moritur: The spawned command 'sh' exited unsuccessfully (exit code: 1, signal: 0)
```

Codex exeundi alius quam `0` plerumque significat aliquid male cessisse. Itaque si `Proc` deficiens abicis, exceptionem iacit. Hoc fit cum extra circumscriptionem exit. Causa est effectum *abicere*, non codicem exeundi neglegere. Satis est `Proc` in variabili servare ut exceptionem vites. Id ne iterum quidem inspicere debes.

```raku
my $proc = run 'sh', '-c', 'exit 1'; # nullus error, quamquam defecit
# …et $proc numquam iterum adhibetur
```

Itaque si *exspectas* imperatum deficere posse, `Proc` eius serva. Deinde `.exitcode` inspice, aut id ut valorem Booleanum proba. Hoc fac quotiens scire vis quid acciderit.

{% include nav.html %}
