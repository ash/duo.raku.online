---
title: Subprogrammata et methodi
translations_gpt:
---

{% include menu.html %}

Nunc duos modos habes agendi rationem ordinandi: _subprogramma_ et _methodum_. Similia videntur, sed eis diversis modis uteris.

Subprogramma per se stat. Id nomine suo vocas, et omnia quibus eget ei ut argumenta tradis:

```raku
sub area-of($radius) {
    π * $radius * $radius;
}

say area-of(2); # 12.566370614359172
```

Methodus ad classem pertinet. Eam in obiecto cum puncto vocas. Propriis obiecti datis per `self` et accessores attributorum uti potest. Itaque illa data tradere non necesse est:

```raku
class Circle {
    has $.radius;

    method area {
        π * $.radius * $.radius;
    }
}

say Circle.new(radius => 2).area; # 12.566370614359172
```

Utrumque eundem numerum computat. Differentia est unde data veniant. Subprogramma radium ut argumentum accipit. Methodus eum ex obiecto legit in quo vocata est.

Ecce regula simplex. Utere subprogrammate pro operatione separata quae solum argumenta sua in effectum vertit. Utere methodo cum agendi ratio ad obiectum pertinet et datis eius utitur. Pro proceduris generalibus quae ad totam classem pertinent, utere methodis classis.

{% include nav.html %}
