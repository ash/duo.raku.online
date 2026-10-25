---
title: Creando et vocando functiones
---

{% include menu.html %}

Nunc ad ultimam sectionem primae partis cursus pervenisti. Post eam satis scies ut fere _quodlibet_ programma in Raku scribas. Argumentum huius sectionis sunt _functiones_. Etiam _subroutinae_ vocantur, vel simpliciter _routinae_.

Functio est pars codicis cum nomine, quam multis vicibus adhibere potes. Functionem ex diversis locis in programmate _vocare_ potes.

## Creare functionem

Ut functionem crees, scribe verbum `sub` et deinde nomen functionis. Corpus functionis intra par uncorum curvorum ponitur.

```raku
sub saluta {
    say 'Salve, Mundi!';
}
```

## Utendo functione

Ut functionem adhibeas, simpliciter nomen eius scribe ubi eam vocare vis. In Raku definitio functionis ante vocationem vel post eam esse potest.

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

Nunc plura singula videbimus de functionibus creandis et adhibendis.

{% include nav.html %}
