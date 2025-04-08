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

Contiendra le script de nettoyage des données

- explo.ipynb

Permet de comprendre la structure des données de X et la BDD

# A faire

- bsky_scrap.py / .ipynb

Script pour récuperer des données BlueSky sur la même période

- La base de données MySQL (dans db.py ?)

- analyse.ipynb

Pour l'analyse statistique sur l'échantillon finale de la BDD

- Présentation des données sur le site

Utilisant surement plotly pour intégrer des graphiques dans wordpress