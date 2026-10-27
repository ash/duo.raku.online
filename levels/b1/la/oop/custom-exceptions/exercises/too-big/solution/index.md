---
title: 'Solutio: Nimis magnum'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. `TooBig is Exception` classem exceptionem facit quam iacere potes. Duo data fert, `value` et `limit`. Methodus eius `message` utrumque in textum ponit quem nuntiat.

1. `.throw` exceptionem excitat, et `when TooBig` ei genere suo convenit. Tractator plus agit quam nuntium imprimere. Attributum `limit` directe ex obiecto capto legit ut consilium utile det. Ideo exceptio propria melior est quam chorda simplex. Tractator data cum structura clara accipit, secundum quae agere potest.

1. Exceptio **solum** iacitur cum `$value > $limit`. Pro `30` nulla exceptio est, et corpus anuli usque ad suum `say` currit. Imprimit valorem intra limitem esse. Pro `99` et `60` fit `throw`, itaque illud `say` praeteritur. `CATCH` loco eius exceptionem tractat. Corpus `for` ipsum est clausula quam `CATCH` custodit. Itaque exceptio capta solum gyrum currentem finit. Deinde anulus simpliciter ad valorem sequentem transit.

{% include nav.html %}
