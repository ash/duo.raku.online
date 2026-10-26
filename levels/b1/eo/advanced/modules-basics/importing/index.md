---
title: Importado
---

{% include menu.html %}

Vi povas alporti modulon en programon en pli ol unu maniero. La tri deklaroj `use`, `need` kaj `require` diferencas laŭ tio, _kiam_ ili ŝargas la modulon. Ili ankaŭ diferencas laŭ tio, _kion_ ili disponebligas.

## `use`

Vi jam vidis `use`. Ĝi ŝargas la modulon je kompiltempo kaj importas ĝiajn eksportitajn nomojn. Do vi povas voki ilin rekte:

```raku
use Greeting;
say hello('Anna'); # Hello, Anna!
```

## `need`

`need` ankaŭ ŝargas la modulon je kompiltempo. Sed ĝi _ne_ importas la eksportitajn nomojn. Vi tamen povas atingi ĝiajn `our`-variablojn per la nomo de la modulo:

```raku
need Greeting;
say $Greeting::version; # 1.0
```

Post `need Greeting`, Raku ne rekonus simplan `hello(...)`, ĉar nenio estis importita. Nur la kvalifikitaj nomoj, kiel `$Greeting::version`, estas disponeblaj.

## `require`

`require` ŝargas la modulon je _rultempo_ anstataŭ je kompiltempo. Tio utilas, kiam vi scias nur je rultempo, ĉu vi bezonas modulon. Ekzemple, ĝia nomo povas veni de la enigo de la uzanto.

Ĉar la modulo estas ŝargata je rultempo, nenio estas importata aŭtomate. Por importi simbolojn, listigu ilin en angulaj krampoj post la nomo de la modulo. Tiam vi povas voki ilin rekte:

```raku
require Greeting <&hello>;
say hello('Anna'); # Hello, Anna!
```

En ĉiutaga kodo, `use` estas tio, kion vi volas. `need` kaj `require` ekzistas por malpli oftaj kazoj.

{% include nav.html %}
