---
title: '`if` en `unless` als zinsmodificatoren'
---

{% include menu.html %}

Soms wil je dat een eenvoudige instructie alleen onder een bepaalde voorwaarde draait. Daarvoor heeft Raku een heel handige oplossing. Je hoeft geen apart codeblok te maken. Zet gewoon `if` of `unless` direct na de instructie. In Raku heten zulke constructies _statement modifiers_.

```raku
say 'Good afternoon' if $hours > 12;

say 'All systems work' unless $broken;
```

{% include nav.html %}
