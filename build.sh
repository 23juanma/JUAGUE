#!/bin/bash

CSS_FILE="sitio_web/w3.css"
W3_URL="https://www.w3schools.com/w3css/4/w3.css"

if [ -f "$CSS_FILE" ]; then
    echo "w3.css ya descargado."
else
    echo "Descargando w3.css..."
    curl -o $CSS_FILE $W3_URL || { echo "Error al descargar w3.css"; exit 1; }
fi

echo "Sitio web listo para usar."
