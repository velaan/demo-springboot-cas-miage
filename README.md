
# Déploiement de l'application demo

## Type d'application

Application Spring-boot java

## Prérequis

* Tomcat 8
* Java 8
* Maven 3

## Dépendances

* Module lille1-utils-common

## Configuration

### Variable d'environnement APPLI_LOG_PATH
Cette variable d'environnement permet de localiser les fichiers de logs :

APPLI_LOG_PATH : répertoire des fichiers de logs des applications Spring-boot
Les fichiers de logs de l'application demo se situeront dans le sous-répertoire demo à créer

Exemple de déclaration :

    export APPLI_LOG_PATH=/var/log/tomcat8

### Fichiers de configuration

* Fichier de configuration globale : global-config-udl.properties
* Fichier de configuration de l'application : demo.properties : 
    <section>    
    <br />########################
    <br /># Mettre à false en production
    <br />#
    <br />debug=true
    <br />########################
    <br /># Vide si pas d'interception
    <br />#
    <br />spring.mail.interceptEmail=david.darras@univ-lille1.fr
    <br />
    <br />########################
    <br /># Contexte web
    <br />#
    <br />server.contextPath=/demo
    <br />
    <br />application.language=fr
    </section>

Ces deux fichiers de configuration doivent être déposés dans le répertoire /src/main/resources de l'application.

### Cache

Les fichiers  de cache seront créés dans  le répertoire java.io.tmpdir/demo


## Déploiement de l'application

### Construction
    mvn clean package /* génération du WAR target/demo.war */

### Paramètres d'exécution
A l'exécution de Parrainage, les variables d'environnement Java suivantes devront être positionnées :

    java.net.preferIPv4Stack=true
    javax.net.ssl.trustStore=


### Dépendances 

#### Module lille1-utils-common

Ce module est utilisé par l'ensemble des applications Spring-boot. demo utilise la version 2.0 de ce module.

##### Sources 
https://gitlab-dsi.univ-lille.fr/communication-web/springboot-utils [branche:master]

##### Construction
Répertoire racine du projet :

    mvn clean install

#### Module prof-mapping

Ce module est utilisé par les applications JAVA autour de l'application demo

##### Sources 

https://gitlab-dsi.univ-lille.fr/communication-web/demo [branche:master]

##### Construction
Répertoire racine du projet :

    mvn clean install# demo-springboot-cas-miage
