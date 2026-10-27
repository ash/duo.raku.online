---
title: 'Solutio: Arca cum magnitudine'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
role Sized {
    method describe {
        'size is ' ~ self.size;
    }
}

class Box does Sized {
    has $.size;
}

my $b = Box.new(size => 10);
say $b.describe;
say $b ~~ Sized;
```

🦋 Inveni codicem fontem in archivo [greetable.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/greetable.raku).

## Exitus

```
size is 10
True
```

## Commentarii

1. Pars methodum `describe` dat. Classis partem per `does Sized` componit. Hoc significat: partem in se accipit. Methodus `self.size` requirit. Classis `Box` dat `size`. Pars et classis inter se conveniunt. Simul obiectum plenum faciunt.

1. `Box` partem facit. Itaque comparatio callida `$b ~~ Sized` est `True`. Obiectum omnem partem habet quam classis eius componit. Raku hoc scit. Hoc utile est. Probare potes quid obiectum facere possit. Hoc fac antequam methodum partis vocas.

{% include nav.html %}
