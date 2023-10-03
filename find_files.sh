#!/bin/bash

# чи були передані обидва аргументи
if [ $# -ne 2 ]; then
    echo "Потрібно передати два аргументи: шлях та розширення файлів."
    exit 1
fi

# Зберігаємо аргументи в зміні
directory="$1"
extension="$2"

# чи існує задана директорія
if [ ! -d "$directory" ]; then
    echo "Директорія '$directory' не існує."
    exit 1
fi

# Виводимо файли з вказаним розширенням в даній директорії
find "$directory" -type f -name "*.$extension"