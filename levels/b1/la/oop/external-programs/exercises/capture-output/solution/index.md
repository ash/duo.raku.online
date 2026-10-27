---
title: 'Solutio: Exitum cape'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. `:out` exitum programmatis in `Proc` mittit, non in screen. `.out.slurp(:close)` totum eum rursus legit. `.trim` novam lineam removet quam `echo` in fine addit.

1. Nunc exitus est chorda ordinaria in programmate nostro. Eam sicut quaelibet alia data tractamus. `.words.elems` eam per spatia dividit et partes numerat, quod `3` dat. Haec est ratio exitus capiendi. Programma externum fit lapis aedificandi, et effectum eius ulterius tractamus.

{% include nav.html %}
