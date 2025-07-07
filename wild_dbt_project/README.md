# Wild DBT Project

Ce projet dbt utilise DuckDB comme base de données et contient des modèles d'exemple pour démontrer les fonctionnalités de base de dbt.

## Prérequis

- Python 3.7+
- dbt-core
- dbt-duckdb

## Installation

1. Clonez ce repository
```bash
git clone https://github.com/2501Pr0ject/wild_dbt_project.git
cd wild_dbt_project
```

2. Installez les dépendances dbt
```bash
pip install dbt-core dbt-duckdb
```

3. Configurez votre profil dbt
```bash
cp profiles.yml ~/.dbt/profiles.yml
```

## Utilisation

### Commandes principales

- **Installer les dépendances** : `dbt deps`
- **Exécuter les modèles** : `dbt run`
- **Tester les modèles** : `dbt test`
- **Générer la documentation** : `dbt docs generate`
- **Servir la documentation** : `dbt docs serve`

### Structure du projet

```
wild_dbt_project/
├── analyses/          # Requêtes d'analyse
├── dbt_project.yml    # Configuration du projet
├── macros/            # Macros réutilisables
├── models/            # Modèles dbt
│   └── example/       # Modèles d'exemple
├── seeds/             # Données de seed
├── snapshots/         # Snapshots
└── tests/             # Tests personnalisés
```

### Modèles inclus

- `my_first_dbt_model` : Modèle de base créant une table avec des données d'exemple
- `my_second_dbt_model` : Modèle dérivé filtrant les données du premier modèle

## Configuration

Le projet utilise DuckDB comme base de données par défaut. La configuration se trouve dans :
- `dbt_project.yml` : Configuration du projet
- `profiles.yml` : Configuration de connexion à la base de données

## Ressources

- [Documentation dbt](https://docs.getdbt.com/docs/introduction)
- [Communauté dbt](https://community.getdbt.com/)
- [dbt Discourse](https://discourse.getdbt.com/)
- [Blog dbt](https://blog.getdbt.com/)
