# Installation

Les librairies sont gérées par uv pour faciliter l'installation.

**Etape 1**: Installer `uv` si pas déjà fait

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```
Ou
```bash
wget -qO- https://astral.sh/uv/install.sh | sh
```

**Etape 2**: Cloner le repo

```bash
git clone https://github.com/Cle07/hn-projet-x-bsky.git
```

**Etape 3**: Ouvrir le terminal dans le dossier

```bash
uv venv
source .venv/bin/activate
uv sync
```

# Utilisation

Pour utiliser `bsky_scrap`, il est nécessaire de fournir ses identifiants Bluesky.

Pour utiliser `x_clean`, il est nécessaire d'obtenir le dataset complet à (https://github.com/sinking8/x-24-us-election)[https://github.com/sinking8/x-24-us-election]

Enfin, pour explorer les données, regarder dans `explo`.