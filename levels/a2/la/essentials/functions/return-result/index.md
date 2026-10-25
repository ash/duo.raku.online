---
title: Redonando resultatum
---

{% include menu.html %}

Saepe functio aliquid facit et etiam eventum reddit. In programmate functionali, exempli gratia, functiones nullos effectus laterales habere debent. Imprimere ad consolam est talis effectus lateralis. Sed Raku hoc tibi permittit. Videamus quomodo functio valorem reddit. Etiam videmus quomodo codex vocans hunc valorem accipit.

```raku
sub add($x, $y) {
    return $x + $y;
}

my $sum = add(10, 20);
say $sum; # 30
```

Hic functio `add` duos numeros accipit. Summam eorum reddit. Functio verbum `return` in codice suo habet. Codex vocans hunc valorem sicut quemlibet alium valorem adhibere potest. In programmate supra eum variabili assignamus.

## Ultimus valor

Eventus potest esse ultimus valor in corpore functionis. Tum in Raku non necesse est `return` scribere. Itaque functionem nostram `add` simpliciorem facere possumus:

```raku
sub add($x, $y) {
    $x + $y
}
```

Nota: linea in fine punctum-commatum non habet. Linea est ultima in clausula codicis. Itaque punctum-commatum ibi non necessarium est.

Tales parvas et simplices functiones saepe in una linea scribimus. Tum codex brevior est:

```raku
sub add($x, $y) { $x + $y }
```

## Nulla data reddenda

Interdum functio ante finem corporis sui redire debet. Si functio nullum eventum reddit, utere `return` sine valore.

```raku
sub test($x) {
    return if $x <= 10;
    say "$x est supra limitem";
}
```

{% include nav.html %}
