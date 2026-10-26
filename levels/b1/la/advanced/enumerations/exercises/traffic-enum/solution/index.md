---
title: 'Solutio: Lumina trafficum'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. `my Light $current` est variabilis ordinaria, et eam mutare potes. Solus limes est quod `Light` tenere debet. Cum proximam constantem assignas, lux progreditur. Numerus quaque vice nomen sequitur: `0`, `1`, `2`.

1. `$current++` videtur sponte ad proximam lucem ire debere. Sed errore typi verificandi deficit. `++` constantem ut nudum numerum eius adhibet et `Int` reddit (`red` fit `1`). Sed `Int` typo `Light` non convenit. Itaque lucem moves proximam constantem assignando, ut supra.

1. Probatio typi in omni assignatione operatur, non solum in prima. `$current` accipit `red`, `amber` vel `green`. Aliquid quod non est `Light` errorem typi verificandi dat. Hoc verum est, exempli gratia, pro nudo numero vel chorda.

{% include nav.html %}
