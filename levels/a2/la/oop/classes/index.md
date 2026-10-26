---
title: Classes
translations_gpt:
---

{% include menu.html %}

Adhuc solum genera adhibuisti quae cum Raku veniunt. Haec sunt numeri, chordae, ordines et cetera. Per _programmationem ad obiecta directam_ tua genera facere potes. Tale genus _classem_ appellamus. Valorem huius generis _obiectum_ appellamus.

Ut classem facias, scribe verbum `class`. Post id nomen et clausulam scribe:

```raku
class Dog {
}
```

Haec classis `Dog` nunc vacua est. Sed iam novum genus est. Obiectum classis etiam _exemplar_ appellamus. `new` est methodus. Ut exemplar facias, eam in nomine classis voca:

```raku
class Dog {
}

my $rex = Dog.new;
say $rex; # Dog.new
```

Nunc variabilis `$rex` obiectum `Dog` continet. Quaeque vocatio `new` novum et separatum obiectum facit:

```raku
my $rex = Dog.new;
my $fido = Dog.new;
```

`$rex` et `$fido` sunt duo diversi canes. Classis adhuc vacua est, sed canes diversi sunt. In sectionibus sequentibus classi propria data das. Haec data _attributa_ appellamus. Classis etiam propriam agendi rationem accipit, id est actiones. Has actiones _methodos_ appellamus. Primum argumentum classem et exemplaria eius propius inspicit. Ostendit quomodo differant.

{% include nav.html %}
