---
title: Uzskaitījuma definēšana
translations_gpt:
---

{% include menu.html %}

Lai deklarētu uzskaitījumu, uzrakstiet atslēgvārdu `enum`, nosaukumu un konstanšu nosaukumu sarakstu:

```raku
enum Colour <red green blue>;
```

Tagad ir jauns tips `Colour` ar trim konstantēm: `red`, `green` un `blue`. Katru konstanti var lietot tieši pēc tās nosaukuma:

```raku
say red;   # red
say green; # green
```

Aiz katra nosaukuma ir skaitlis. Raku šos skaitļus piešķir automātiski, sākot no nulles, jūsu saraksta secībā. Tātad `red` ir `0`, `green` ir `1` un `blue` ir `2`. Tā kā vērtībām ir secība, konstantes var salīdzināt:

```raku
say red < blue; # True
```

Mainīgajam var dot uzskaitījuma tipu. Tad tas pieņem tikai šīs konstantes:

```raku
my Colour $c = green;
say $c; # green
```

Konstantes nosaukums var sakrist ar kādu citu nosaukumu jūsu programmā. Tad konstanti vienmēr var sasniegt caur uzskaitījuma nosaukumu un `::`:

```raku
say Colour::red; # red
```

Uzskaitījums dod saistītu konstanšu grupai nosaukumu un tipu. Kods, kas tās izmanto, ir daudz skaidrāks nekā kods ar vienkāršiem skaitļiem. Nākamais temats aplūko [skaitļus, kas stāv aiz nosaukumiem](/lv/advanced/enumerations/values-and-keys).

{% include nav.html %}
