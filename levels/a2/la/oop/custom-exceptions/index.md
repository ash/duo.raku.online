---
title: Exceptiones propriae
translations_gpt:
---

{% include menu.html %}

Raku exceptiones inbuiltas habet. Nomina earum ab `X::` incipiunt. Etiam tuas exceptiones facere potes. Eas exceptiones proprias vocamus. Exceptio propria est classis. Ab inbuilta classe `Exception` heredat. Itaque etiam ipsa `Exception` est. Etiam methodum `message` habet:

```raku
class TooBig is Exception {
    has $.value;

    method message {
        "Value $.value is too big";
    }
}
```

`TooBig` classis ordinaria est. Attributa habere potest, sicut `value`. Sed `is Exception`. Itaque eam iacere potes, sicut errorem ex `die`. Ut eam iacias, obiectum classis fac. Deinde `.throw` in hoc obiecto voca:

```raku
my $value = 20 * 30;

TooBig.new(value => $value).throw if $value > 50;

CATCH {
    when TooBig {
        say .message;
    }
}
```

Programma imprimit:

```
Value 600 is too big
```

Intra `CATCH`, `when TooBig` convenit. Hoc fit quia obiectum iactum genus `TooBig` habet. Exceptio propria quaelibet data tenet quae ei das. Hic haec data sunt `value`. Codex qui exceptionem tractat est tractator. Tractator his datis uti potest. Nuntium exactum aedificare potest. Aut modo speciali reagere potest. Hoc multo utilius est quam chorda simplex pro `die`.

Hic omnia ex hac parte cursus conveniunt. Exceptio propria est _classis_. Attributa et methodum habet. Etiam cum instrumentis exceptionum in Raku operatur. Eam iacere et capere potes. Itaque exacte dicere potest quid male cesserit.

{% include nav.html %}
