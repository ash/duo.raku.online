---
title: 'Solutio: Explorare resultatum `prompt` — Catenae'
---

{% include menu.html %}

## Codex

Hic est programma plenum. Opus facit. Chordam quam inseris et genus eius imprimit.

```raku
my $name = prompt 'Quod est nomen tuum? ';
say $name;
say $name.WHAT;
```

🦋 Codicem fontis invenire potes in fasciculo [prompt-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-strings.raku).

## Probationes

Exsequere programma bis aut ter. Diversa nomina insere. Programma inputum tuum iterum imprimit. Etiam tibi dicit: variabilis chordam continet. Aliis verbis, est obiectum generis `Str`.

```console
$ raku exercises/data-types/prompt-strings.raku
Quod est nomen tuum? Andrey
Andrey
(Str)
```

Nunc programma iterum exsequere. Pauca spatia pro nomine scribe. Deinde preme Enter.

```console
$ raku exercises/data-types/prompt-strings.raku
Quod est nomen tuum?    

(Str)
```

Exitum non videmus. Sed genus variabilis videmus. Adhuc est `Str`.

{% include nav.html %}
