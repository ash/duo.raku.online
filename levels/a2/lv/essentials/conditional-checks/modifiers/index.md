---
title: '`if` un `unless` kā izteiksmes modifikatori'
---

{% include menu.html %}

Dažreiz vienkāršs paziņojums ir atkarīgs no nosacījuma. Raku valodā ir ļoti viegls veids, kā to uzrakstīt. Jums nav vajadzīgs atsevišķs koda bloks. Vienkārši ielieciet `if` vai `unless` tūlīt aiz paziņojuma. Raku valodā tos sauc par _paziņojumu modifikatoriem_.

```raku
say 'Labdien' if $hours > 12;

say 'Visas sistēmas darbojas' unless $broken;
```

{% include nav.html %}
