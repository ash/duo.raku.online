---
title: 'Quiz 1: Concatenating strings'
---

{% include menu.html %}

The operations below do different kinds of concatenation. Fill in the missing parts.

{:.quiz-code}
. | my $first-name = &apos;Edgar&apos;;
. | my $middle-name = &apos;Allan&apos;;
= | my $last-name ␣ &apos;Poe&apos;;
~ ~ | my $name = $first-name ␣ &apos; &apos; ␣ $last-name;
- ~ ~ - ~ ~ - | my $full-name = $first␣name ␣ &apos; &apos; ␣ $middle␣name ␣ &apos; &apos; ␣ $last␣name;
. | say $full-name;
~ ~ | say $first-name ␣ &apos; &apos; ␣ $last-name;
~ | say &apos;E. &apos; ␣ $last-name;

{% include quiz.html %}

{% include nav.html %}
