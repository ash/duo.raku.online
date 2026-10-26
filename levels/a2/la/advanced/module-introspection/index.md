---
title: Introspectio modulorum
translations_gpt: true
---

{% include menu.html %}

Nomen moduli etiam _fasciculum_ creat. Fasciculus est spatium nominum. Nomina ex modulo servat. Antea, in [sectione de continentibus](/la/advanced/containers), `WHO` vidisti. Id `Stash` fasciculi reddit. `Stash` est tabula symbolorum, id est nominum, in fasciculo. Introspectio moduli hoc adhibet. Cum ea programma modulum intus inspicit.

Exempla infra modulum `Greeting` ex prioribus argumentis adhibent. Subroutinam habet quam exportat. Etiam variabilem communem `our` habet:

```raku
unit module Greeting;

our $version = '1.0';

sub hello($name) is export {
    return "Hello, $name!";
}
```

Ut fasciculum moduli accipias, `::` post nomen eius scribe. Deinde `.keys` adde. Id nomina in fasciculo enumerat:

```raku
use Greeting;

say Greeting::.keys.sort; # ($version EXPORT)
```

Modulus `Greeting` ex prioribus argumentis variabilem `our` habet, `$version`. Itaque fasciculus eius hoc nomen habet. Nomen etiam sigillum habet. Iuxta id `EXPORT` vides. Hoc fortasse mirum est. `EXPORT` quoque fasciculus est. Raku eum automatice facit. Modulus quasdam res `is export` notat. `EXPORT` omnes eas servat, exempli gratia subroutinam `hello`. Itaque nomen exportatum _non_ directe in fasciculo est. In `EXPORT` est. Hic est minor fasciculus intra fasciculum moduli. Claves non in ordine fixo veniunt. Itaque exemplum eas ordinat. Tum resultatum semper idem est.

Etiam nomen in fasciculo invenire potes. Nomine ut clave utere. Eundem valorem accipis ac cum nomine pleno `$Greeting::version`:

```raku
use Greeting;

say Greeting::{'$version'}; # 1.0
```

## Exportata moduli enumerare

Nomina exportata re vera in fasciculo `EXPORT` sunt, quem supra vidisti. Itaque ea enumerare potes. Inspice tantum unum gradum profundius. Exportata sine indice in gregem `DEFAULT` eunt. De indicibus legere potes in [Indices exportationis](/la/advanced/modules-basics/export-tags). `.keys` gregis `DEFAULT` sunt subroutinae exportatae:

```raku
use Greeting;

say Greeting::EXPORT::DEFAULT::.keys.sort; # (&hello)
```

Quaeque clavis est nomen exportatum cum sigillo suo. Hic una tantum clavis est: subroutina `&hello`. Sigillum `&` ostendit: haec est routina. Ita cognoscere potes quid modulus utentibus suis det. Codicem fontis eius legere non debes. Tantum fasciculum eius `EXPORT::DEFAULT` interroga quid habeat.

Fasciculum sic intus inspicere utile est. Cognoscere potes quid modulus habeat. Etiam ad nomina eius pervenire potes, dum programma currit. Tum non debes unumquodque nomen in codice scribere.

{% include nav.html %}
