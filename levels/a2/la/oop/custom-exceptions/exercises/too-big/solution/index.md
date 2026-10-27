---
title: 'Solutio: Nimis magnum'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
class TooBig is Exception {
    has $.value;
    has $.limit;

    method message {
        "Value $.value exceeds the limit of $.limit";
    }
}

my $limit = 50;

for 30, 99, 60 -> $value {
    TooBig.new(value => $value, limit => $limit).throw if $value > $limit;
    say "Value $value is within the limit";

    CATCH {
        when TooBig {
            say .message;
            say "Try a value up to {.limit}.";
        }
    }
}
```

🦋 Inveni codicem fontem in archivo [too-big.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/too-big.raku).

## Exitus

```
Value 30 is within the limit
Value 99 exceeds the limit of 50
Try a value up to 50.
Value 60 exceeds the limit of 50
Try a value up to 50.
```

## Commentarii

1. `TooBig is Exception` classem exceptionem facit. Eam iacere potes. Duo data tenet, `value` et `limit`. Methodus eius `message` utrumque in textum ponit.

1. `.throw` exceptionem iacit. `when TooBig` ei genere suo convenit. Codex in `when TooBig` est tractator. Plus agit quam nuntium imprimere. Etiam attributum `limit` ex obiecto capto legit. Per id tractator consilium utile dat. Ideo exceptio propria melior est quam chorda simplex. Tractator data in forma clara accipit. Secundum haec data agere potest.

1. Programma exceptionem **solum** iacit cum `$value > $limit`. Pro `30` nulla exceptio est. Corpus anuli usque ad finem currit. `say` eius imprimit valorem intra limitem esse. Pro `99` et `60` fit `throw`. Itaque programma illud `say` praeterit. `CATCH` loco eius exceptionem tractat. Hic `CATCH` in ipso corpore anuli `for` est. Itaque exceptio capta solum gyrum currentem finit. Deinde anulus simpliciter ad valorem sequentem pergit.

{% include nav.html %}
