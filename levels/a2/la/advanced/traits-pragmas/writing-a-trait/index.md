---
title: Proprietatem scribere
---

{% include menu.html %}

Traits sunt multi-subroutinae ordinariae cum nomine speciali. Ergo traits tuos scribere potes. Visne trait `is something`? Tum defini `multi sub trait_mod:<is>`. Parametra eius duas res dicunt. Dicunt rem in qua trait operatur. Etiam nomen trait dant:

Haec est una ex partibus difficilioribus Raku. Noli sollicitari si difficilis videtur. Traits incorporatos bene adhibere potes sine hac scientia. Non necesse est scire quomodo facti sint. Raro trait ipse scribere debebis. Haec pagina tibi tantum interiora traits ostendit.

```raku
my @traced;

multi sub trait_mod:<is>(Routine:D $r, :$traced!) {
    @traced.push($r.name);
}

sub foo() is traced { }
sub bar() is traced { }

say @traced; # [foo bar]
```

Specta signaturam. Primum parametrum est `Routine:D $r`. Est res quae trait habet. Hic est subroutina. `:D` est typus _smiley_. Valorem **definitum** requirit. Hoc est obiectum routinae verum. Non est ipse typus indefinitus `Routine`. Sunt duo alii smileys. `:U` obiectum typi indefinitum requirit. `:_` utrumque accipit. Parametrum nominatum `:$traced!` est nomen trait. Propter hoc parametrum `is traced` hanc sub vocat. Traits tempore **compilationis** currunt. Ergo Raku `foo` et `bar` registrat statim cum declarationes eorum legit. Cum programma currit, `@traced` iam ambo nomina habet. Etiam lineam `say @traced` sursum movere potes, supra duas definitiones `sub`. Adhuc `[foo bar]` imprimit.

Hic parvus trait tantum nomina registrat. Sed eadem idea multo plus facere potest. Exempli gratia, trait routinam involvere potest et logificationem addere. Attributum probare potest. Aut metadata adiungere potest, id est data addita de codice. Hic primum parametrum est `Routine`. Id etiam `Attribute` vel `Variable` facere potes. Tum trait cum attributis vel variabilibus operatur. Traits syntaxin declarationum in Raku apertam servant. Semper novos traits addere potes. Trait incorporatus `is rw` et tuus `is traced` eodem modo facti sunt.

{% include nav.html %}
