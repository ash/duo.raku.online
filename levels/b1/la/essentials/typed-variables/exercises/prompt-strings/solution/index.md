---
title: 'Solutio: Explorare resultatum `prompt` — Catenae'
---

{% include menu.html %}

## Codex

Hic est programma completum. Opus facit et tam chordam insertam quam genus eius imprimit.

```raku
my $name = prompt 'Quod est nomen tuum? ';
say $name;
say $name.WHAT;
```

🦋 Codicem fontis invenire potes in fasciculo [prompt-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-strings.raku).

## Probationes

Exsequere programma aliquoties cum diversis nominibus. Programma inputum repetit. Etiam nuntiat variabilem chordam continere. Aliis verbis, est obiectum generis `Str`.

```console
$ raku exercises/data-types/prompt-strings.raku
Quod est nomen tuum? Andrey
Andrey
(Str)
```

Nunc programma iterum exsequere. Pauca spatia pro nomine scribe et preme Enter.

```console
$ raku exercises/data-types/prompt-strings.raku
Quod est nomen tuum?    

(Str)
```

Exitum non videmus. Sed videre possumus variabilem adhuc genus `Str` habere.

{% include nav.html %}
