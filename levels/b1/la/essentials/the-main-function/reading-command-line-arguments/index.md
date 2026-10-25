---
title: Legere linea mandati argumenta
---

{% include menu.html %}

Functio `MAIN` initium programmatis clare signat, quod utile est. Sed etiam utilis est quia argumenta eius valores ex linea mandati accipiunt.

Argumenta lineae mandati duobus modis legere potes. Primus est [`@*ARGS` array](/la/essentials/positionals/args-array), quo iam usi sumus. Nunc secundum modum spectemus.

Ecce programma quod duos numeros addit.

```raku
sub MAIN($a, $b) {
    say $a + $b;
}
```

Sic programma currere potes. Summam duorum argumentorum suorum imprimit:

```console
$ raku t.raku 123 45
168
```

Sicut quaevis alia functio, `MAIN` valores praedefinitos pro argumentis suis habere potest. Hoc pro quibusdam eorum possibile est, vel etiam pro omnibus. Exempli gratia:

```raku
sub MAIN($a, $b = 100) {
    say $a + $b;
}
```

Si secundum argumentum non das, programma valorem praedefinitum adhibet:

```console
$ raku t.raku 15
115
```

{% include nav.html %}
