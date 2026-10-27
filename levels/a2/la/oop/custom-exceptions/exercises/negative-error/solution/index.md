---
title: 'Solutio: Error numeri negativi'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
class Negative is Exception {
    has $.n;

    method message {
        "$.n is negative";
    }
}

sub check($n) {
    Negative.new(n => $n).throw if $n < 0;
    return $n;
}

{
    say check(-5);

    CATCH {
        when Negative {
            say .message;
        }
    }
}

Negative.new(n => -10).throw;
```

🦋 Inveni codicem fontem in archivo [negative-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/negative-error.raku).

## Exitus

```
-5 is negative
-10 is negative
  in block <unit> at negative-error.raku line 24
```

## Commentarii

1. `Negative is Exception` tibi permittit hanc classem iacere. Methodus eius `message` textum ex attributo `n` aedificat.

1. `check` introitum suum probat. Pro numero negativo exceptionem propriam iacit. Exceptio ex `check` exit. Ad `CATCH` venit in clausula quae `check` vocavit. Ibi `when Negative` ei genere suo convenit. Deinde `CATCH` nuntium imprimit. Hic est usus verus et valde frequens exceptionum propriarum. Programma introitum suum probat. Pro valore malo exceptionem sui generis iacit.

1. Cur `{ … }` circa vocationem est? Fasis `CATCH` solum exceptiones ex **sua propria clausula** tractat. Haec est clausula quae `CATCH` intus habet. Hic clausula vocationem `check(-5)` una cum sua `CATCH` tenet. Vocatio deficere potest, et `CATCH` propter eam adest. Itaque `CATCH` exceptionem hic ipso loco capit. Deinde programma statim post clausulam pergit. Quid si nulla clausula est? Tum `CATCH` pro toto programmate operatur. Exceptionem capit. Sed tum programma simpliciter finit. Nullus bonus locus est ubi pergat.

1. Ultima linea, `Negative.new(n => -10).throw`, casum contrarium ostendit. Haec linea **extra** clausulam est. Itaque nihil exceptionem capit. Exceptio usque ad summum ascendit. Tum programma moritur, id est cum errore sistit. Nuntium ad errorem vulgarem imprimit. Ibi etiam vestigium imprimit. Vestigium locum erroris in codice ostendit. Deinde programma finit cum codice exeundi alio quam `0`. Hoc omni exceptioni accidit quam non capis. Et ideo primus iactus `CATCH` egebat. Sine ea programma pergere non potest.

{% include nav.html %}
