---
title: Pakete und Namensräume
---

{% include menu.html %}

Ein _Namensraum_ (Namespace) ist ein Behälter mit einem Namen. Er enthält andere Dinge mit Namen, zum Beispiel Variablen und Subroutinen. Mit Namensräumen können zwei Dinge ohne Problem denselben Namen haben. `Maths::pi` und `Physics::pi` können beide existieren. Ein _Package_ ist die einfachste Art von Namensraum.

Du hast schon einen Namensraum benutzt, aber du hast ihn nicht so genannt. Jedes `module` erzeugt einen. Dieser Abschnitt schaut sich Packages direkt an. Er zeigt auch, wie du von außen in einen Namensraum kommst. Dafür benutzt du `our`-Variablen und den Trenner `::`.

{% include nav.html %}
