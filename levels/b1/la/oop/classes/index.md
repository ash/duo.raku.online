---
title: Classes
translations_gpt:
---

{% include menu.html %}

Adhuc omnia genera datorum quibus usus es in Raku inbuilta erant. Haec erant numeri, chordae, ordines et cetera. Per _programmationem ad obiecta directam_ tua genera definire potes, quae _classes_ appellantur. Etiam valores horum generum creare potes, quae _obiecta_ appellantur.

Ut classem definias, scribe verbum `class`, deinde nomen et clausulam:

```raku
class Dog {
}
```

Haec classis `Dog` adhuc vacua est, sed iam novum genus est. Obiectum classis etiam _exemplar_ appellatur. Ut exemplar crees, methodum `new` in nomine classis voca:

```raku
class Dog {
}

my $rex = Dog.new;
say $rex; # Dog.new
```

Nunc `$rex` obiectum `Dog` continet. Quotiens `new` vocas, novum et separatum obiectum accipis:

```raku
my $rex = Dog.new;
my $fido = Dog.new;
```

`$rex` et `$fido` sunt duo diversi canes, quamquam classis adhuc vacua est. In sectionibus sequentibus classi propria data dabis, quae _attributa_ appellantur. Etiam ei propriam agendi rationem dabis, quam _methodos_ appellamus. Primum argumentum propius inspicit quomodo classis ab exemplaribus suis differat.

{% include nav.html %}
