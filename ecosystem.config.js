module.exports = {
  apps: [
    {
      name: 'ci-cd-demo',
      script: 'dist/index.js',
      instances: 2,
      autorestart: true,
      max_memory_restart: '1G',
      env: {
        NODE_ENV: 'development',
      },
    },
  ],
};
