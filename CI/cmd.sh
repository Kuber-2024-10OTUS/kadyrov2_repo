#!/bin/bash

# Функция для сборки
function build() {
    echo "Building the application..."
    mkdir -p build
    gcc -o build/app src/main.c
    echo "Build completed."
}

# Функция для тестирования
function test() {
    echo "Running tests..."
    ./build/app --test
    echo "Tests completed."
}

# Функция для деплоя
function deploy() {
    echo "Deploying the application..."
    scp build/app user@server:/path/to/deploy
    echo "Deploy completed."
}

# Основной код
if [ "$1" == "build" ]; then
    build
elif [ "$1" == "test" ]; then
    test
elif [ "$1" == "deploy" ]; then
    deploy
else
    echo "Usage: ./cmd.sh [build|test|deploy]"
    exit 1
fi