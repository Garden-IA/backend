const express = require('express');
const cors = require('cors');
const swaggerMiddleware = require('./src/config/swagger');

const app = express();

// Middlewares
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cors());

// Swagger
swaggerMiddleware(app);

// Routes
const authRoutes = require('./src/features/auth/routes');

app.use('/api/v1/auth', authRoutes);

module.exports = app;