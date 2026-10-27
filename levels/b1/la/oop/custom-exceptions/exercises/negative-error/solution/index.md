---
title: 'Solutio: Error numeri negativi'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. `Negative is Exception` efficit ut classis iaci possit. Methodus eius `message` textum ex attributo `n` aedificat.

1. `check` introitum suum probat et pro numero negativo exceptionem propriam iacit. Exceptio ex `check` ad `CATCH` in clausula vocante migrat. Ibi `when Negative` ei genere suo convenit et nuntium imprimit. Hic est usus verus et valde frequens exceptionum propriarum. Codex introitum suum probat et valores malos exceptione sui generis nuntiat.

1. Cur `{ … }` circa vocationem est? Fasis `CATCH` solum exceptiones tractat iactas in **clausula quae eam continet**. Clausula periculosum `check(-5)` una cum `CATCH` coniungit quae illud custodit. Itaque exceptio hic ipso loco capitur, et programma statim post clausulam pergit. Sine clausula, `CATCH` loco eius totum programma custodiret. Exceptionem caperet, sed tum programma simpliciter finiret. Nullus locus naturalis esset ubi pergeret.

1. Ultimum `Negative.new(n => -10).throw` alteram huius rei partem ostendit. **Extra** clausulam est, itaque nihil illud capit. Exceptio usque ad summum ascendit, et programma moritur. Nuntium et vestigium ad errorem vulgarem imprimit. Deinde exit cum statu alio quam nihil. Hoc accidit cuilibet exceptioni quam non capis. Et ideo exacte primus iactus `CATCH` egebat ut superesset.

{% include nav.html %}
