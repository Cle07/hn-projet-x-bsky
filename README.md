# Installation

Les librairies sont gérées par uv pour faciliter l'installation.

Etape 1: Installer `uv` si pas déjà fait

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```
Ou
```bash
wget -qO- https://astral.sh/uv/install.sh | sh
```

Etape 2: Cloner le repo

```bash
git clone https://github.com/Cle07/hn-projet-x-bsky.git
```

Etape 3: Ouvrir le terminal dans le dossier

```bash
uv venv
source .venv/bin/activate
uv sync
```

# Liste des fichiers

- clean.ipynb

Contient le script permettant, à partir du repo du dataset de X, d'en extraire 2 DataFrame au format .parquet (pour prendre moins de place). Les deux DataFrame contiennent les données au format attendu par la BDD, en retirant les tweets non-français, les valeurs manquantes, et les retweets. Chaque ligne du DataFrame des post contient un user_id qui permet d'identifier l'auteur dans x_user.parquet.

- explo.ipynb

Permet de comprendre la structure de base des données de X et la BDD

# A faire

- bsky_scrap.py / .ipynb

Script pour récuperer des données BlueSky sur la même période.

- La base de données MySQL

Faire un script python ou passer directement par MySQL?

- analyse.ipynb

Pour l'analyse statistique sur l'échantillon finale de la BDD.

- Présentation des données sur le site

Utilisant surement plotly pour intégrer des graphiques dans wordpress.