---
title: '`if` un `unless` kā izteiksmes modifikatori'
---

{% include menu.html %}

Dažreiz jūs vēlaties, lai vienkāršs paziņojums izpildītos tikai tad, ja ir izpildīts noteikts nosacījums. Tam Raku piedāvā ļoti ērtu risinājumu. Jums nav jāveido atsevišķs koda bloks. Vienkārši ielieciet `if` vai `unless` tūlīt aiz paziņojuma. Raku valodā šādas konstrukcijas sauc par _paziņojumu modifikatoriem_.

```raku
say 'Labdien' if $hours > 12;

say 'Visas sistēmas darbojas' unless $broken;
```

{% include nav.html %}
