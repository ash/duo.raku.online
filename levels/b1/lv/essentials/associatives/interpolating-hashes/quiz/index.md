---
title: Viktorīna — Hashes interpolācija
---

{% include menu.html %}

Apskatiet šo hešu:

```raku
my %letters = α => 'Alpha', β => 'Beta', γ => 'Gamma';
```

Pabeidziet zemāk esošās programmas, lai tās izdrukātu izvadi, ko prasa katrs uzdevums.

## 1

Izdrukājiet grieķu burta `β` nosaukumu, izmantojot hešu. Uzrakstiet atslēgu bez pēdiņām.

{:.quiz-code}
&lt;β&gt; | say &quot;Burts β tiek saukts par %letters␣␣.&quot;;

## 2

Izdrukājiet grieķu burta `β` nosaukumu, izmantojot hešu. Uzrakstiet atslēgu vienkāršajās pēdiņās.

{:.quiz-code}
{&apos;β&apos;} | say &quot;Burts β tiek saukts par %letters␣␣␣␣.&quot;;

## 3

Izdrukājiet burtus un to nosaukumus kā tabulu.

{:.quiz-code}
letters{ | say &quot;Šeit ir daži grieķu burti:\n%␣␣␣␣␣}\nutml.&quot;; | Ņemiet vērā, ka izvade var nebūt sakārtota.

Šajā gadījumā izvade var izskatīties šādi:

    Šeit ir daži grieķu burti:
    α	Alpha
    β	Beta
    γ	Gamma
    utml.

{% include quiz.html %}

{% include nav.html %}
