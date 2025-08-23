# tv_grab_fr_telerama
XMLTV Grabber using telerama data

## Problème de contenu?
Le contenu n'étant pas généré par l'application mais récupéré sur l'api utilisée par les applications mobile (android/iOS), il est inutile de nous contacter pour un problème d'exactitude du contenu si celui-ci est également présent sur les applications mobiles.

* application android: https://play.google.com/store/apps/details?id=com.telerama.fr</br>
* application iOS: https://itunes.apple.com/fr/app/programme-tv-telerama/id324160932?mt=8</br>

Le site https://television.telerama.fr/ peut afficher des données differentes mais ce grabber n'utilise pas les données du site, inutile de nous contacter dans ce cas là.
<b>Merci de vérifier avant d'ouvrir un ticket</b>

## Changelog

<b>Depuis la version 3.7</b>
Le grabber nécéssite maintenant l'installation du module Mojo::Dom

Il est packagé dans les distributions récentes sous le nom libmojolicious-perl

S'il n'est pas packagé pour votre distribution, utiliser cpanm pour installer ( https://www.cpan.org/modules/INSTALL.html )

<b>Depuis la version 1.22</b> La source de données du grabber est l'api utilisée par les application mobiles.

les numéro des chaînes n'étant pas les mêmes, il est nécessaire de refaire un
<pre>
tv_grab_fr_telerama --configure
</pre>
Si vous utilisez mythtv, il conviendra de modifier également ces ids dans la base de données (ou depuis myhtweb) pour mettre ceux au nouveau format (CXXX.api.telerama.fr). Les Ids sont visibles dans votre fichier de configuration généré plus haut.

Ce fichier de configuration doit également être placé dans votre répertoire xmltv à la place du précédent.
