---
title: Uzskaitījuma definēšana
translations_gpt:
---

{% include menu.html %}

Lai deklarētu uzskaitījumu, uzrakstiet atslēgvārdu `enum`. Pēc tam uzrakstiet nosaukumu un konstanšu nosaukumu sarakstu:

```raku
enum Colour <red green blue>;
```

Tas izveido jaunu tipu `Colour`. Tas izveido arī trīs konstantes: `red`, `green` un `blue`. Konstanti var lietot vienkārši pēc tās nosaukuma:

```raku
say red;   # red
say green; # green
```

Aiz katra nosaukuma ir skaitlis. Raku piešķir skaitļus jūsu vietā. Tas sāk no nulles un iet jūsu saraksta secībā. Tātad `red` ir `0`, `green` ir `1` un `blue` ir `2`. Vērtībām ir secība. Tāpēc konstantes var salīdzināt:

```raku
say red < blue; # True
```

Mainīgajam var būt uzskaitījuma tips. Tad mainīgais pieņem tikai šīs konstantes:

```raku
my Colour $c = green;
say $c; # green
```

Konstantei un kaut kam citam var būt vienāds nosaukums. Tad pirms konstantes uzrakstiet uzskaitījuma nosaukumu un `::`. Tas vienmēr strādā:

```raku
say Colour::red; # red
```

Uzskaitījums saliek kopā saistītas konstantes. Tas dod tām nosaukumu un tipu. Kods ar šīm konstantēm ir daudz skaidrāks nekā kods tikai ar skaitļiem. Nākamais temats ir par [skaitļiem aiz nosaukumiem](/lv/advanced/enumerations/values-and-keys).

{% include nav.html %}
