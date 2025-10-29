# Makefile for RepoCraft

.PHONY: help install test lint build clean dev docs

# Default target
help: ## Show this help message
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

# Installation
install: ## Install dependencies
	@echo "Installing dependencies..."
	@if [ -f package.json ]; then npm install; fi
	@if [ -f requirements.txt ]; then pip install -r requirements.txt; fi
	@if [ -f pyproject.toml ]; then pip install -e .; fi

# Development
dev: ## Start development environment
	@echo "Starting development environment..."
	@if [ -f package.json ]; then npm run dev; fi
	@if [ -f pyproject.toml ]; then python -m repocraft dev; fi

# Testing
test: ## Run tests
	@echo "Running tests..."
	@if [ -f package.json ]; then npm test; fi
	@if [ -f requirements.txt ] || [ -f pyproject.toml ]; then python -m pytest tests/ -v; fi

test-coverage: ## Run tests with coverage
	@echo "Running tests with coverage..."
	@if [ -f package.json ]; then npm run test:coverage; fi
	@if [ -f requirements.txt ] || [ -f pyproject.toml ]; then python -m pytest tests/ --cov=src --cov-report=html; fi

# Linting
lint: ## Run linting
	@echo "Running linting..."
	@if [ -f package.json ]; then npm run lint; fi
	@if [ -f pyproject.toml ]; then python -m flake8 src/ tests/; fi
	@if [ -f pyproject.toml ]; then python -m black --check src/ tests/; fi

lint-fix: ## Fix linting issues
	@echo "Fixing linting issues..."
	@if [ -f package.json ]; then npm run lint:fix; fi
	@if [ -f pyproject.toml ]; then python -m black src/ tests/; fi

# Building
build: ## Build project
	@echo "Building project..."
	@if [ -f package.json ]; then npm run build; fi
	@if [ -f pyproject.toml ]; then python -m build; fi

# Documentation
docs: ## Generate documentation
	@echo "Generating documentation..."
	@if [ -f package.json ]; then npm run docs; fi
	@if [ -f pyproject.toml ]; then python -m sphinx docs/ docs/_build/html; fi

docs-serve: ## Serve documentation locally
	@echo "Serving documentation..."
	@if [ -f package.json ]; then npm run docs:serve; fi
	@if [ -f pyproject.toml ]; then python -m sphinx_autobuild docs/ docs/_build/html --open-browser; fi

# Cleaning
clean: ## Clean build artifacts
	@echo "Cleaning build artifacts..."
	@rm -rf dist/ build/ *.egg-info/ .pytest_cache/ .coverage htmlcov/
	@if [ -f package.json ]; then npm run clean; fi

# Security
security: ## Run security checks
	@echo "Running security checks..."
	@if [ -f package.json ]; then npm audit; fi
	@if [ -f requirements.txt ]; then pip install safety && safety check; fi

# Release
release: ## Create a new release
	@echo "Creating release..."
	@if [ -f package.json ]; then npm version patch; fi
	@git add .
	@git commit -m "Release $(shell cat VERSION)"
	@git tag v$(shell cat VERSION)
	@git push origin main --tags

# Docker
docker-build: ## Build Docker image
	@echo "Building Docker image..."
	docker build -t repocraft:latest .

docker-run: ## Run Docker container
	@echo "Running Docker container..."
	docker run -it --rm repocraft:latest

# Setup
setup: install ## Setup development environment
	@echo "Setting up development environment..."
	@cp .env.example .env 2>/dev/null || true
	@echo "Development environment ready!"

# CI
ci: install test lint build ## Run CI pipeline
	@echo "CI pipeline completed successfully!"

# All
all: clean install test lint build docs ## Run all tasks
	@echo "All tasks completed successfully!"
