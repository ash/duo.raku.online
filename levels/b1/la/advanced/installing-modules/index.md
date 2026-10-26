---
title: Modulos ex interrete installare
translations_gpt:
---

{% include menu.html %}

Non solum modulos adhibere potes quos ipse scribis. Communitas Raku magnam collectionem modulorum edidit. Omnia tractant, a compagibus interretialibus usque ad formas datorum. Eos installare et in tuis programmatis adhibere potes.

## Instrumentum `zef`

Moduli per `zef` installantur, qui est moderator modulorum normatus. Una cum Rakudo venit. Ut modulum installes, nomen eius `zef` trade:

```console
$ zef install JSON::Fast
```

`zef` modulum deponit una cum omnibus rebus a quibus pendet. Deinde probationes moduli exsequitur et eum installat. Modulus installatus automatice in via inquisitionis est. Itaque programma eum simplici `use` onerare potest. Optio `-I` non necessaria est:

```raku
use JSON::Fast;
```

`zef` etiam in oecosystemate quaerere potest. Modulos quoque renovare vel removere potest:

```console
$ zef search Test
$ zef uninstall JSON::Fast
```

## Unde moduli proveniant

Moduli editi pars _oecosystematis_ Raku sunt. Id in situ interretiali [raku.land](https://raku.land) perlustrare potes. Situs distributiones quae praesto sunt et earum documentationem enumerat.

## `META6.json`

Distributio quae ad communicandum facta est fasciculum descriptionis habet, nomine `META6.json`. Hic fasciculus nomen et versionem distributionis memorat. Etiam modulos quos praebet enumerat et alias distributiones a quibus pendet. `zef` hunc fasciculum legit. Ex eo `zef` discit quid installare debeat et quomodo partes inter se conveniant. Si modulum tuum edis, rectum `META6.json` requirit. Hoc efficit ut omnes alii eum installare possint.

{% include nav.html %}
