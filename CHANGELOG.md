# Changelog

Toutes les modifications notables de ce projet seront documentées dans ce fichier.

Le format est basé sur [Keep a Changelog](https://keepachangelog.com/fr/1.0.0/).

## [Non publié]

## [1.2.0] - 2025-01-07

### Ajouté
✅ Tests de qualité des données complets
✅ Tests intégrés not_null et unique sur stg_customers et stg_orders
✅ Test de relation (relationships) entre customer_id des deux tables
✅ Test accepted_values pour order_status
✅ Test personnalisé pour vérifier les dates de commande

### Validation
✅ 11 tests dbt exécutés avec succès
✅ Couverture complète de la validation des données
✅ Intégrité référentielle vérifiée

### Technique
✅ Création de la branche challenge-dbt-tests
✅ Ajout du dossier tests/ avec fichier personnalisé
✅ Mise à jour des fichiers YAML de documentation

## [1.1.0] - 2025-01-07

### Ajouté
✅ Structure complète des modèles staging
✅ Documentation des modèles avec fichiers YAML
✅ Données de test avec noms des collègues
✅ Modèles stg_customers et stg_orders fonctionnels

### Modifié
✅ Configuration dbt_project.yml pour utiliser staging au lieu d'example
✅ Suppression du dossier example par défaut
✅ Mise à jour du .gitignore pour exclure la documentation

### Technique
✅ Création de la branche challenge-stg-orders
✅ Merge réussie de la pull request
✅ Tests dbt run passent sans erreur

## [1.0.0] - 2025-01-07

### Ajouté
✅ Initialisation du projet dbt wild_dbt_project
✅ Configuration DuckDB pour l'environnement de développement
✅ Structure de base du projet avec tous les dossiers requis
✅ Configuration des profils dev et prod
✅ Modèles d'exemple my_first_dbt_model et my_second_dbt_model
✅ Documentation complète du projet (cours_dbt.md et cours_dbt_pedagogique.md)
✅ Configuration .gitignore
✅ Repository GitHub créé et configuré

### Configuration
✅ Environnement Python avec dbt-core et dbt-duckdb
✅ Base de données DuckDB locale
✅ Profils dbt configurés correctement
✅ Vérification réussie avec dbt debug

### Documentation
✅ Guide complet dbt pédagogique créé
✅ Explication détaillée du choix DuckDB vs MySQL
✅ Exemples concrets et cas d'usage
✅ Structure progressive du débutant à l'expert