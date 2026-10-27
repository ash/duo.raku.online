---
title: 'Solutio: Exitum cape'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
my $proc = run 'echo', 'hello world raku', :out;
my $output = $proc.out.slurp(:close).trim;
say $output.words.elems;
```

🦋 Inveni codicem fontem in archivo [capture-output.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/capture-output.raku).

## Exitus

```
3
```

## Commentarii

1. `:out` exitum in `Proc` mittit. In screen non it. `.out.slurp(:close)` totum eum rursus legit. `.trim` novam lineam in fine removet. `echo` hanc novam lineam addit.

1. Nunc exitus est chorda ordinaria in programmate nostro. Cum ea sicut cum quibuslibet aliis datis laboramus. `.words.elems` chordam per spatia dividit. Deinde partes numerat. Effectus est `3`. Propter hoc exitum capimus. Programma externum fit una pars operis nostri. Effectum eius in gradibus sequentibus adhibemus.

{% include nav.html %}
