---
title: 'Quiz 1: Concatenar cadenas'
---

{% include menu.html %}

El código de abajo tiene diferentes concatenaciones. Completa las partes que faltan.

{:.quiz-code}
. | my $primer-nombre = &apos;Edgar&apos;;
. | my $segundo-nombre = &apos;Allan&apos;;
= | my $apellido ␣ &apos;Poe&apos;;
~ ~ | my $nombre = $primer-nombre ␣ &apos; &apos; ␣ $apellido;
- ~ ~ - ~ ~ - | my $nombre-completo = $primer␣nombre ␣ &apos; &apos; ␣ $segundo␣nombre ␣ &apos; &apos; ␣ $apellido;
. | say $nombre-completo;
~ ~ | say $primer-nombre ␣ &apos; &apos; ␣ $apellido;
~ | say &apos;E. &apos; ␣ $apellido;

{% include quiz.html %}

{% include nav.html %}
