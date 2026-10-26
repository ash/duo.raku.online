---
title: do et valor bloci
---

{% include menu.html %}

Copia sola sententia est, non expressio. Itaque plerumque eam variabili assignare non potes. Praefixum `do` copiam expressionem facit. Valor eius est valor **ultimae** sententiae in copia:

```raku
my $x = do {
    my $a = 3;
    $a + 4;
};

say $x; # 7
```

Intra copiam variabiles creare potes. Plures sententias currere et resultatum computare potes. `do` valorem copiae reddit. Hoc utile est cum una expressio ad valorem non sufficit.

`do` etiam ante sententias fluxus controllandi operatur. Hae sententiae codicem eligunt aut iterant. Cum `do` etiam valorem reddunt:

```raku
my $sign = do given 5 {
    when * > 0 { 'positive' }
    when * < 0 { 'negative' }
    default    { 'zero' }
};

say $sign; # positive
```

Hic `do given` totum `given`/`when` expressionem facit. Valor eius est `positive`. Idem cum `do if` et `do for` operatur. Breviter, `do` sinit copiam stare ubi Raku valorem requirit. Etiam pro structuris controllandi operatur.

{% include nav.html %}
