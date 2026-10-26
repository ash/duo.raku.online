---
title: Attributa privata
translations_gpt:
---

{% include menu.html %}

In [sectione de attributis](/la/oop/attributes) quodque attributum `$.` in nomine habebat. `$.` accessorem publicum creat. Omnes extra obiectum eo uti possunt. Sed etiam `$!` loco eius scribere potes. Tum attributum _privatum_ est. Accessorem non habet. Codex extra obiectum id videre non potest. Solum methodi classis eo uti possunt. Ibi id ut `$!name` scribis.

```raku
class Safe {
    has $!code = 4321;

    method unlocks($attempt) {
        return $attempt == $!code;
    }
}

my $safe = Safe.new;
say $safe.unlocks(4321); # True
say $safe.unlocks(1111); # False
```

Secretum `$!code` intra obiectum est. Sed nemo extra id videre potest. Nullus accessor `.code` est. Codicem solum per methodum `unlocks` adhibere potes. Classis tibi hanc methodum consulto dat. Lectio `$safe.code` vel `$safe!code` simpliciter deficit.

Attributa privata bona sunt pro particulis intra obiectum. Cetera pars programmatis eas directe tangere non debet.

{% include nav.html %}
