# Health & Wellness Application

A comprehensive health and wellness mobile application built with Flutter and microservices architecture.

## 📋 Table of Contents

- [Features](#features)
- [Architecture](#architecture)
- [Technology Stack](#technology-stack)
- [Getting Started](#getting-started)
- [Project Structure](#project-structure)
- [API Documentation](#api-documentation)
- [Deployment](#deployment)
- [Testing](#testing)
- [Contributing](#contributing)
- [License](#license)

## ✨ Features

### Core Features
- **Health Tracking**: Vitals, sleep, water intake, weight, and medications
- **Nutrition**: Meal logging, calorie counting, barcode scanning, recipes
- **Fitness**: Workout plans, exercise library, wearable integrations
- **Telehealth**: Doctor consultations, appointments, prescriptions
- **Mental Health**: Mood tracking, meditation, journaling
- **AI Insights**: Health score, recommendations, predictions
- **Gamification**: Challenges, achievements, leaderboards

### User Management
- Email/Password authentication
- Social login (Google, Apple, Facebook)
- Multi-factor authentication
- Profile management with health details

## 🏗️ Architecture

### Microservices Architecture
```
┌─────────────────┐
│   API Gateway   │
│      (Kong)     │
└────────┬────────┘
         │
    ┌────┴────┬──────────┬───────────┬────────────┬─────────────┐
    │         │          │           │            │             │
┌───▼───┐ ┌──▼────┐ ┌──▼──────┐ ┌──▼────────┐ ┌──▼─────────┐ ┌──▼──────────┐
│ User  │ │Health │ │Nutrition│ │ Fitness   │ │ Telehealth │ │  AI/ML      │
│Service│ │Service│ │ Service │ │ Service   │ │ Service    │ │  Service    │
└───────┘ └───────┘ └─────────┘ └───────────┘ └────────────┘ └─────────────┘
    │         │          │           │            │             │
    └─────────┴──────────┴───────────┴────────────┴─────────────┘
                              │
                    ┌─────────▼──────────┐
                    │  Message Queue     │
                    │   (RabbitMQ)       │
                    └─────────┬──────────┘
                              │
              ┌───────────────┼───────────────┐
              │               │               │
        ┌─────▼─────┐ ┌──────▼──────┐ ┌──────▼──────┐
        │Notification│ │  Payment    │ │  Analytics  │
        │  Service   │ │  Service    │ │  Service    │
        └───────────┘ └─────────────┘ └─────────────┘
```

### Mobile App Architecture (Clean Architecture + BLoC)
```
┌─────────────────────────────────────────┐
│          Presentation Layer             │
│  (Pages, Widgets, BLoCs, States)        │
├─────────────────────────────────────────┤
│            Domain Layer                 │
│  (Entities, Repositories, UseCases)     │
├─────────────────────────────────────────┤
│             Data Layer                  │
│  (Models, Repositories, DataSources)    │
└─────────────────────────────────────────┘
```

## 🛠️ Technology Stack

### Mobile
- **Framework**: Flutter 3.x
- **State Management**: flutter_bloc
- **Dependency Injection**: get_it
- **Local Storage**: SQLite, Hive
- **Networking**: dio

### Backend
- **Runtime**: Node.js 18+, Python 3.9+
- **Language**: TypeScript, Python
- **Framework**: Express.js, FastAPI
- **Databases**: PostgreSQL, MongoDB, Redis
- **Search**: Elasticsearch
- **Message Queue**: RabbitMQ
- **API Gateway**: Kong

### Infrastructure
- **Container Orchestration**: Kubernetes (EKS)
- **Cloud**: AWS (EKS, RDS, S3, CloudFront, Lambda)
- **CI/CD**: GitHub Actions
- **Monitoring**: Prometheus, Grafana, ELK Stack
- **Error Tracking**: Sentry

## 🚀 Getting Started

### Prerequisites
- Flutter SDK 3.x
- Node.js 18+
- Python 3.9+
- Docker & Docker Compose
- Kubernetes (for production deployment)

### Local Development Setup

1. **Clone the repository**
```bash
git clone https://github.com/your-org/health-app.git
cd health-app
```

2. **Install dependencies**
```bash
# Mobile
cd mobile
flutter pub get

# Backend services
cd backend/services/user-service
npm install

# AI/ML service
cd backend/services/ai-ml-service
pip install -r requirements.txt
```

3. **Setup environment variables**
```bash
cp .env.example .env
# Edit .env with your configuration
```

4. **Start local development**
```bash
# Using Docker Compose
docker-compose up -d

# Or run services individually
make dev
```

5. **Run the mobile app**
```bash
cd mobile
flutter run
```

## 📁 Project Structure

```
health-app/
├── mobile/                 # Flutter mobile application
│   ├── lib/
│   │   ├── core/          # Core utilities, config, widgets
│   │   ├── data/          # Data layer (models, repositories, datasources)
│   │   ├── domain/        # Domain layer (entities, usecases)
│   │   ├── presentation/  # Presentation layer (pages, blocs, widgets)
│   │   └── main.dart
│   └── test/
├── backend/
│   ├── api-gateway/       # Kong API Gateway
│   ├── services/          # Microservices
│   │   ├── user-service/
│   │   ├── health-service/
│   │   ├── nutrition-service/
│   │   ├── fitness-service/
│   │   ├── telehealth-service/
│   │   ├── ai-ml-service/
│   │   ├── notification-service/
│   │   ├── payment-service/
│   │   └── analytics-service/
│   └── shared/            # Shared code and utilities
├── web/
│   ├── admin-dashboard/   # Admin dashboard (React)
│   └── landing-page/      # Landing page (React)
├── infrastructure/
│   ├── terraform/         # Infrastructure as Code
│   ├── kubernetes/        # K8s manifests
│   ├── docker/            # Docker configurations
│   └── helm/              # Helm charts
└── docs/                  # Documentation
```

## 📚 API Documentation

API documentation is available at:
- **Swagger/OpenAPI**: `/api/docs`
- **Postman Collection**: Available in `docs/api/postman_collection.json`

See [API Reference](docs/api/api-reference.md) for detailed documentation.

## 🚢 Deployment

### Environments
- **Development**: Local Docker Compose
- **Staging**: Kubernetes on AWS
- **Production**: Kubernetes on AWS with auto-scaling

### Deploy to Staging
```bash
cd infrastructure/kubernetes
kubectl apply -k overlays/staging
```

### Deploy to Production
```bash
cd infrastructure/helm
helm upgrade health-app ./health-app -f values-production.yaml
```

## ✅ Testing

### Run All Tests
```bash
# Mobile tests
cd mobile
flutter test

# Backend tests
cd backend/services/user-service
npm test

# Integration tests
make test-integration
```

### Test Coverage
- Unit tests: >80% coverage required
- Integration tests: Critical paths
- E2E tests: Key user flows

## 🤝 Contributing

Please read our [Contributing Guide](docs/guides/contributing.md) for details on our code of conduct and the process for submitting pull requests.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📞 Support

For support, email support@healthapp.com or open an issue in the repository.
