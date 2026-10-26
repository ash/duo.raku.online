---
title: do et valor bloci
---

{% include menu.html %}

Copia per se sententia est, non expressio. Itaque plerumque eam variabili assignare non potes. Praefixum `do` copiam in expressionem convertit. Valor eius est valor **ultimae** sententiae copiae:

```raku
my $x = do {
    my $a = 3;
    $a + 4;
};

say $x; # 7
```

Intra copiam variabiles declarare, plures sententias currere et resultatum computare potes. Deinde `do` valorem copiae reddit. Hoc utile est cum plus quam unam expressionem requiris ut valorem accipias.

`do` etiam ante sententias fluxus controllandi operatur. Tum etiam illae valorem reddere possunt:

```raku
my $sign = do given 5 {
    when * > 0 { 'positive' }
    when * < 0 { 'negative' }
    default    { 'zero' }
};

say $sign; # positive
```

Hic `do given` totum `given`/`when` in expressionem cum valore `positive` convertit. Idem cum `do if` et `do for` operatur. Breviter, `do` sinit te copia uti ubi valor exspectatur. Hoc etiam pro structura controllandi operatur.

{% include nav.html %}
