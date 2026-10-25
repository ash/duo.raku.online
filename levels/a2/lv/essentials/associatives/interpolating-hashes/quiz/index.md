---
title: Viktorīna — Hashes interpolācija
---

{% include menu.html %}

Šeit ir hešs:

```raku
my %letters = α => 'Alpha', β => 'Beta', γ => 'Gamma';
```

Pabeidziet programmas zemāk. Katrai jāizdrukā sava uzdevuma izvade.

## 1

Izdrukājiet grieķu burta `β` nosaukumu. Ņemiet to no heša. Nelieciet atslēgu pēdiņās.

{:.quiz-code}
&lt;β&gt; | say &quot;Burts β tiek saukts par %letters␣␣.&quot;;

## 2

Izdrukājiet grieķu burta `β` nosaukumu. Ņemiet to no heša. Ielieciet atslēgu vienkāršajās pēdiņās.

{:.quiz-code}
{&apos;β&apos;} | say &quot;Burts β tiek saukts par %letters␣␣␣␣.&quot;;

## 3

Izdrukājiet tabulu ar burtiem un to nosaukumiem.

{:.quiz-code}
letters{ | say &quot;Šeit ir daži grieķu burti:\n%␣␣␣␣␣}\nutml.&quot;; | Ņemiet vērā, ka izvade var nebūt sakārtota.

Programma var izdrukāt šo:

    Šeit ir daži grieķu burti:
    α	Alpha
    β	Beta
    γ	Gamma
    utml.

{% include quiz.html %}

{% include nav.html %}
