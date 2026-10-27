---
title: 'Solutio: Arca cum magnitudine'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Pars methodum `describe` praebet, et classis eam per `does Sized` componit. Methodus `self.size` requirit, quod classis `Box` praebet. Itaque pars et classis inter se conveniunt et obiectum plenum efficiunt.

1. `Box` partem facit, itaque comparatio callida `$b ~~ Sized` est `True`. Obiectum omnem partem habere censetur quam classis eius componit. Hoc te adiuvat probare quid obiectum facere possit antequam methodum partis vocas.

{% include nav.html %}
