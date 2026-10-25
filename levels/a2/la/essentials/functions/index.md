---
title: Creando et vocando functiones
---

{% include menu.html %}

Prima pars cursus in hac sectione finem habet. Post eam fere _quodlibet_ programma in Raku scribere potes. Haec sectio de _functionibus_ est. Functiones etiam alia nomina habent: _subroutinae_, vel solum _routinae_.

Functio est pars codicis cum proprio nomine. Eam multis vicibus adhibere potes. Ut functionem adhibeas, eam _vocas_. Eam ex diversis locis in programmate vocare potes.

## Creare functionem

Ut functionem crees, scribe verbum `sub`. Post id scribe nomen functionis. Corpus functionis in uncis curvis pone.

```raku
sub saluta {
    say 'Salve, Mundi!';
}
```

## Utendo functione

Ut functionem adhibeas, solum nomen eius scribe. Id scribe ubi functionem vocare vis. In Raku functionem ante hunc locum creare potes. Etiam post hunc locum eam creare potes.

```raku
say 'Hoc est quod primum programma plerumque imprimit:';
saluta;    

sub saluta {
    say 'Salve, Mundi!';
}
```

Programma utrumque nuntium imprimit:

```console
$ raku t.raku
Hoc est quod primum programma plerumque imprimit:
Salve, Mundi!
```

Deinde plura de creatione et usu functionum videamus.

{% include nav.html %}
