#!/bin/bash

# Configuration des variables
OUTPUT="source.txt"
POM_FILE="pom.xml"

# Suppression de l'ancien fichier d'export
rm -f "$OUTPUT"

# Génération du rapport d'export
{
    echo "PROJECT EXPORT"
    echo "Generated: $(date)"
    echo "================================================="
    echo "PROJECT CONFIGURATION"
    echo "================================================="
    echo
    
    # Inclusion du fichier pom.xml si présent à la racine
    if [ -f "$POM_FILE" ]; then
        echo "================================================="
        echo "FILE : $POM_FILE"
        echo "================================================="
        nl -ba "$POM_FILE"
        echo
    else
        echo "AVERTISSEMENT : Aucun fichier $POM_FILE trouvé à la racine."
        echo
    fi

    # Inclusion des fichiers sources Java
    find src/main -type f 2>/dev/null | sort | while read -r file
    do
        echo "================================================="
        echo "FILE : $file"
        echo "================================================="
        nl -ba "$file"
        echo
    done
} > "$OUTPUT"

echo "Export terminé -> $OUTPUT"
