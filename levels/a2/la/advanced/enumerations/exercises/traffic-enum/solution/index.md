---
title: 'Solutio: Lumina trafficum'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
enum Light <red amber green>;

my Light $current = red;
say "$current is {$current.value}";

$current = amber;
say "$current is {$current.value}";

$current = green;
say "$current is {$current.value}";
```

🦋 Inveni codicem fontem in archivo [traffic-enum.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/traffic-enum.raku).

## Exitus

```
red is 0
amber is 1
green is 2
```

## Commentarii

1. `my Light $current` est variabilis ordinaria. Valorem eius mutare potes. Sed solum `Light` tenere potest. Proximam constantem assigna, et lux progreditur. Quaque vice numerus cum nomine mutatur: `0`, `1`, `2`.

1. Videtur `$current++` sponte ad proximam lucem ire. Sed errore typi verificandi deficit. `++` constantem solum ut numerum eius videt. `Int` reddit: `red` fit `1`. Sed `Int` non est `Light`. Itaque, ut lucem moveas, proximam constantem assigna, ut supra.

1. Raku typum in omni assignatione probat, non solum in prima. `$current` accipit `red`, `amber`, vel `green`. Alios valores non accipit, ut numerum vel chordam. Hi valores non sunt `Light`. Talis assignatio errorem typi verificandi dat.

{% include nav.html %}
