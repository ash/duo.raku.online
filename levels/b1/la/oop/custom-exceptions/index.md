---
title: Exceptiones propriae
translations_gpt:
---

{% include menu.html %}

Raku exceptiones inbuiltas `X::` habet, sed etiam tuas ipsius creare potes. Exceptio propria est classis quae ab inbuilta classe `Exception` heredat. Etiam methodum `message` habet:

```raku
class TooBig is Exception {
    has $.value;

    method message {
        "Value $.value is too big";
    }
}
```

`TooBig` classis ordinaria est, itaque attributa habere potest, sicut `value`. Sed quia `is Exception`, eam iacere potes. Ut eam iacias, obiectum creas et `.throw` in eo vocas:

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

Intra `CATCH`, `when TooBig` convenit quia obiectum iactum illud genus habet. Exceptio propria quaelibet data fert quae ei das, hic `value`. Itaque tractator nuntium exactum aedificare vel modo speciali reagere potest. Hoc multo utilius est quam chorda simplex ad `die` tradita.

Haec pagina omnia ex hac parte coniungit. Exceptio propria est _classis_ cum attributis et methodo. Etiam in systemate exceptionum Raku partem habet. Itaque parata est nuntiare quid exacte male cesserit.

{% include nav.html %}
