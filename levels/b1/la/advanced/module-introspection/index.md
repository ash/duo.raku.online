---
title: Introspectio modulorum
translations_gpt: true
---

{% include menu.html %}

Nomen moduli _fasciculum_ creat. Fasciculus est spatium nominum quod nomina in modulo definita continet. Antea, in [sectione de continentibus](/la/advanced/containers), `WHO` cognovisti. Id `Stash`, sive tabulam symbolorum, fasciculi reddit. Introspectio moduli hoc adhibet.

Exempla infra modulum `Greeting` adhibent, quem in prioribus argumentis construximus. Subroutinam exportatam et variabilem communem `our` habet:

```raku
unit module Greeting;

our $version = '1.0';

sub hello($name) is export {
    return "Hello, $name!";
}
```

Fasciculum moduli cum `::` in fine scribis. Si `.keys` addis, id nomina quae continet enumerat:

```raku
use Greeting;

say Greeting::.keys.sort; # ($version EXPORT)
```

Modulus `Greeting` ex prioribus argumentis variabilem `our` definit, `$version`. Itaque fasciculus eius hoc nomen continet, una cum sigillo suo. Iuxta id est `EXPORT`, quod mirum videri potest. Est fasciculus quem Raku automatice creat. Omnia continet quae modulus `is export` notat, sicut subroutinam `hello`. Itaque nomen exportatum _non_ directe in fasciculo apparet. Intra sub-fasciculum `EXPORT` habitat. Claves nullo ordine fixo redeunt. Ideo exemplum eas ordinat, ut resultatum semper idem sit.

Nomen etiam in fasciculo quaerere potes. Nomine tantum ut clave utere. Hoc eundem valorem dat ac nomen qualificatum `$Greeting::version`:

```raku
use Greeting;

say Greeting::{'$version'}; # 1.0
```

## Enumeratio eorum quae modulus exportat

Nomina exportata re vera in fasciculo `EXPORT` habitant, quem supra vidisti. Itaque ea enumerare potes, si unum gradum profundius inspicis. Exportata sine indice in gregem `DEFAULT` eunt (vide [Indices exportationis](/la/advanced/modules-basics/export-tags)). `.keys` huius gregis sunt subroutinae exportatae:

```raku
use Greeting;

say Greeting::EXPORT::DEFAULT::.keys.sort; # (&hello)
```

Quaeque clavis est nomen exportatum cum sigillo suo. Hic est unica subroutina, `&hello`, cum `&` quod routinam designat. Hoc modo cognoscere potes quid modulus utentibus suis praebeat. Codicem fontis eius legere non debes. Tantum fasciculum eius `EXPORT::DEFAULT` interroga quid contineat.

Fasciculum sic intus inspicere utile est in duobus casibus. Fortasse cognoscere vis quid modulus praebeat. Aut fortasse nomina eius attingere vis, dum programma currit. Tum non debes unumquodque in codice fontis scribere.

{% include nav.html %}
