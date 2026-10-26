---
title: Pakete und Namensräume
---

{% include menu.html %}

Ein _Namensraum_ (Namespace) ist ein Behälter mit einem Namen. Er enthält andere Dinge mit Namen, wie Variablen und Subroutinen. Er verhindert Konflikte zwischen Namen: `Maths::pi` und `Physics::pi` können beide existieren, ohne sich zu stören. Ein _Package_ ist die einfachste Art von Namensraum.

Du hast schon einen Namensraum benutzt, ohne ihn so zu nennen: Jedes `module` erzeugt einen Namensraum. Dieser Abschnitt betrachtet Packages direkt. Du siehst auch, wie du von außen in einen Namensraum greifen kannst. Dafür benutzt du `our`-Variablen und den `::`-Trenner.

{% include nav.html %}
