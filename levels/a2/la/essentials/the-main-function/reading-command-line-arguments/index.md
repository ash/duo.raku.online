---
title: Legere linea mandati argumenta
---

{% include menu.html %}

Functio `MAIN` duabus de causis utilis est. Primo, clare ostendit ubi programma incipit. Secundo, argumenta habet. Ea valores suos ex linea mandati accipiunt.

Argumenta lineae mandati duobus modis legere possumus. Unus modus est [`@*ARGS` array](/la/essentials/positionals/args-array). Id iam adhibuimus. Nunc secundum modum spectamus.

Specta hoc programma. Duos numeros addit.

```raku
sub MAIN($a, $b) {
    say $a + $b;
}
```

Programma sic curre. Summam duorum argumentorum suorum imprimit:

```console
$ raku t.raku 123 45
168
```

Sicut quaevis alia functio, `MAIN` valores praedefinitos pro argumentis suis habere potest. Quaedam argumenta eos habere possunt. Etiam omnia argumenta eos habere possunt. Exempli gratia:

```raku
sub MAIN($a, $b = 100) {
    say $a + $b;
}
```

Interdum nullum secundum argumentum est. Tum programma valorem praedefinitum adhibet:

```console
$ raku t.raku 15
115
```

{% include nav.html %}
