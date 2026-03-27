# Health App - VS Code Project Hierarchy & Master Design

[![CI](https://github.com/health-app/health-app/actions/workflows/ci.yml/badge.svg)](https://github.com/health-app/health-app/actions/workflows/ci.yml)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

## 📋 Overview

Health App is a comprehensive health and wellness mobile application designed to help users track their health metrics, manage nutrition, fitness, mental health, and access telehealth services. Built with modern architecture patterns and best practices for scalability, security, and maintainability.

## 🎯 Core Features

### 1. **User Management**
- Email/Password registration and login
- Social login (Google, Apple, Facebook)
- Multi-factor authentication
- Profile management with health details
- Preferences and goal setting

### 2. **Health Tracking**
- Vital signs logging (heart rate, blood pressure, temperature, oxygen, glucose)
- Sleep tracking with quality metrics
- Water intake monitoring with reminders
- Weight and body composition tracking
- Medication reminders and logging

### 3. **Nutrition**
- Meal logging with food search
- Barcode scanning for packaged foods
- Calorie and macro tracking
- Recipe database with nutritional info
- Personalized diet plans

### 4. **Fitness**
- Workout logging with exercises
- Pre-built workout plans
- Exercise library with videos
- Integration with wearables (Apple Health, Google Fit, Fitbit)
- Progress tracking and analytics

### 5. **Telehealth**
- Doctor search by specialty
- Appointment booking
- Video/Audio consultations
- In-app chat with doctors
- Prescription management

### 6. **Mental Health**
- Mood tracking with factors
- Guided meditation library
- Personal journaling
- Breathing exercises
- Stress management tools

### 7. **AI Features**
- Health score calculation
- Personalized recommendations
- Symptom checker chatbot
- Food recognition from photos
- Predictive health insights

### 8. **Gamification**
- Daily/weekly challenges
- Achievement badges
- Points and levels system
- Leaderboards
- Social sharing

## 🏗️ Architecture

### Mobile App (Flutter)
```
mobile/
├── lib/
│   ├── core/          # Core utilities, config, constants
│   ├── data/          # Data layer (models, repositories, datasources)
│   ├── domain/        # Business logic (entities, usecases, repository interfaces)
│   ├── presentation/  # UI layer (pages, blocs, widgets)
│   └── di/            # Dependency injection
```

### Backend Services (Microservices)
```
backend/
├── api-gateway/       # API Gateway (Kong/Node.js)
├── services/
│   ├── user-service/      # Authentication & User Management
│   ├── health-service/    # Health Metrics Tracking
│   ├── nutrition-service/ # Nutrition & Meal Tracking
│   ├── fitness-service/   # Workouts & Exercises
│   ├── telehealth-service/# Telehealth & Appointments
│   ├── ai-ml-service/     # AI/ML Predictions & Recommendations
│   ├── notification-service/# Push, Email, SMS
│   ├── payment-service/   # Payments & Subscriptions
│   └── analytics-service/ # Analytics & Reporting
└── shared/            # Shared libraries and utilities
```

### Infrastructure
```
infrastructure/
├── terraform/         # Infrastructure as Code
├── kubernetes/        # K8s manifests
├── docker/            # Docker configurations
└── helm/              # Helm charts
```

## 🛠️ Technology Stack

| Layer | Technology |
|-------|-----------|
| **Mobile** | Flutter (Dart) |
| **Backend** | Node.js (TypeScript), Python (AI/ML) |
| **Databases** | PostgreSQL, MongoDB, Redis |
| **Search** | Elasticsearch |
| **Message Queue** | RabbitMQ |
| **API Gateway** | Kong |
| **Container Orchestration** | Kubernetes |
| **Cloud** | AWS (EKS, RDS, S3, CloudFront, Lambda) |
| **CI/CD** | GitHub Actions |
| **Monitoring** | Prometheus, Grafana, ELK Stack, Sentry |

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (>=3.0.0)
- Node.js (>=18.x)
- Python (>=3.9)
- Docker & Docker Compose
- Kubernetes (for production deployment)
- Terraform (for infrastructure)

### Development Setup

1. **Clone the repository**
```bash
git clone https://github.com/health-app/health-app.git
cd health-app
```

2. **Setup environment variables**
```bash
cp .env.example .env
# Edit .env with your configuration
```

3. **Start development environment**
```bash
docker-compose -f docker-compose.dev.yml up -d
```

4. **Install mobile dependencies**
```bash
cd mobile
flutter pub get
```

5. **Install backend dependencies**
```bash
cd backend/api-gateway && npm install
cd ../services/user-service && npm install
# ... repeat for other services
```

6. **Run the mobile app**
```bash
cd mobile
flutter run
```

For detailed setup instructions, see [docs/guides/development-setup.md](docs/guides/development-setup.md)

## 📁 Project Structure

See the complete project structure in the [Project Hierarchy](#project-hierarchy) section below.

## 🧪 Testing

```bash
# Run all tests
make test

# Run mobile tests
cd mobile && flutter test

# Run backend tests
cd backend/services/user-service && npm test

# Run integration tests
./scripts/run-tests.sh
```

## 📦 Deployment

### Development
```bash
./scripts/deploy.sh dev
```

### Staging
```bash
./scripts/deploy.sh staging
```

### Production
```bash
./scripts/deploy.sh production
```

For detailed deployment instructions, see [docs/guides/deployment-guide.md](docs/guides/deployment-guide.md)

## 📖 Documentation

- [Getting Started Guide](docs/guides/getting-started.md)
- [Development Setup](docs/guides/development-setup.md)
- [Deployment Guide](docs/guides/deployment-guide.md)
- [Testing Guide](docs/guides/testing-guide.md)
- [Contributing Guidelines](docs/guides/contributing.md)
- [API Reference](docs/api/api-reference.md)
- [System Design](docs/architecture/system-design.md)
- [Database Schema](docs/architecture/database-schema.md)

## 🔒 Security

- JWT tokens with short expiry (15 min access, 7 day refresh)
- Secure password hashing (bcrypt)
- AES-256 encryption at rest
- TLS 1.3 in transit
- HIPAA compliance for health data
- GDPR compliance for user data

## 🤝 Contributing

Please read our [Contributing Guide](docs/guides/contributing.md) before submitting pull requests.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👥 Team

- Backend Team
- Mobile Team
- DevOps Team
- QA Team

---

Built with ❤️ for better health outcomes
