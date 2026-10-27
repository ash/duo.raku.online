---
title: Subprogrammata et methodi
translations_gpt:
---

{% include menu.html %}

Nunc duos modos nosti quibus actiones coniungis. Unus est _subprogramma_. Alter est _methodus_. Similes videntur. Sed eis diversis modis uteris.

Subprogramma per se stat. Ad nihil pertinet. Id nomine suo vocas. Omnia quibus eget ei ut argumenta tradis:

```raku
sub area-of($radius) {
    π * $radius * $radius;
}

say area-of(2); # 12.566370614359172
```

Methodus ad classem pertinet. Est sicut functio intra classem. Methodum in obiecto vocas, cum puncto. Obiectum est valor classis. Methodus datis sui obiecti uti potest. Ad hoc `self` et accessores attributorum habet. Itaque haec data ei non tradis:

```raku
class Circle {
    has $.radius;

    method area {
        π * $.radius * $.radius;
    }
}

say Circle.new(radius => 2).area; # 12.566370614359172
```

Utrumque eundem numerum dat. Differentia est unde data veniant. Subprogramma radium ut argumentum accipit. Methodus radium ex suo obiecto legit. Hoc est obiectum in quo eam vocas.

Ecce regula simplex. Statne codex per se et solum cum argumentis suis operatur? Tum subprogrammate utere. Pertinetne codex ad obiectum et cum datis eius operatur? Tum methodo utere. Pertinetne codex ad classem, sed non ad unum obiectum? Tum methodis classis utere.

{% include nav.html %}
