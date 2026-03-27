.PHONY: help dev build test clean up down logs

# Default target
help:
@echo "Available commands:"
@echo "  make dev       - Start development environment"
@echo "  make build     - Build all services"
@echo "  make test      - Run tests"
@echo "  make clean     - Clean build artifacts"
@echo "  make up        - Start all containers"
@echo "  make down      - Stop all containers"
@echo "  make logs      - View logs"
@echo "  make mobile-deps - Install mobile dependencies"

# Development
dev:
docker-compose up -d mongodb postgres redis rabbitmq elasticsearch
@echo "Development environment started!"

# Build
build:
cd mobile && flutter pub get
cd backend/services/user-service && npm install

# Test
test:
cd mobile && flutter test
cd backend/services/user-service && npm test

# Clean
clean:
rm -rf mobile/build
rm -rf backend/services/*/dist
find . -name "node_modules" -type d -exec rm -rf {} \;

# Docker
up:
docker-compose up -d

down:
docker-compose down

logs:
docker-compose logs -f

# Mobile
mobile-deps:
cd mobile && flutter pub get
