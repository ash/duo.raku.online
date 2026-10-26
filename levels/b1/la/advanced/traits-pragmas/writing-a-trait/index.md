---
title: Proprietatem scribere
---

{% include menu.html %}

Traits sunt multi-subroutinae ordinariae nomine speciali, itaque tuos scribere potes. Ut trait nomine `is something` addas, defini `multi sub trait_mod:<is>`. Parametra eius dicunt cui rei trait applicetur, et nomen trait dant:

Haec est una ex partibus altioribus Raku. Noli sollicitari si difficilis videtur. Traits incorporatos optime adhibere potes, etsi nescis quomodo facti sint. Raro unum ipse scribere debebis. Ergo hanc paginam accipe ut aspectum in interiora rerum.

```raku
my @traced;

multi sub trait_mod:<is>(Routine:D $r, :$traced!) {
    @traced.push($r.name);
}

sub foo() is traced { }
sub bar() is traced { }

say @traced; # [foo bar]
```

Lege signaturam. Primum parametrum, `Routine:D $r`, est res cui trait adiunctus est. Hic est subroutina. `:D` est typus _smiley_ qui valorem **definitum** requirit. Hoc significat obiectum routinae verum, non ipsum typum indefinitum `Routine`. Socii eius sunt `:U`, qui obiectum typi indefinitum requirit, et `:_`, qui utrumque accipit. Parametrum nominatum `:$traced!` est nomen ipsius trait. Quia hoc parametrum adest, `is traced` hanc sub vocat. Traits tempore **compilationis** currunt. Ergo `foo` et `bar` registrantur statim ut declarantur. Cum programma currit, `@traced` iam eos enumerat. Etiam lineam `say @traced` supra duas definitiones `sub` movere posses. Adhuc `[foo bar]` imprimeret.

Hic parvus trait tantum nomina registrat, sed eadem idea multo plus facere potest. Routinam involvere potest ut logificationem addat, attributum probare, vel metadata addere. Primum parametrum etiam `Attribute` vel `Variable` esse potest loco `Routine`. Tum trait attributis vel variabilibus applicatur. Per traits Raku syntaxin declarationum suam apertam servat. Trait incorporatus `is rw` et tuus `is traced` eodem modo facti sunt.

{% include nav.html %}
