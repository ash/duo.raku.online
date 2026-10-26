---
title: Attributa privata
translations_gpt:
---

{% include menu.html %}

In [sectione de attributis](/la/oop/attributes) quodque attributum per `$.` declaravimus. Hoc accessorem publicum creat. Si contra attributum per `$!` declaras, _privatum_ est. Accessorem non habet, et id extra obiectum videre non potes. Solum propriae classis methodi id attingere possunt. Ibi id ut `$!name` scribis.

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

Secretum `$!code` intra obiectum servatur, sed numquam foris ostenditur. Nullus accessor `.code` est. Itaque solum per methodum `unlocks` cum eo agere potes. Classis hanc methodum praebere eligit. Si `$safe.code` vel `$safe!code` legere temptas, simpliciter deficit.

Attributa privata utilia sunt pro particulis internis. Cetera pars programmatis cum his particulis directe agere non debet.

{% include nav.html %}
