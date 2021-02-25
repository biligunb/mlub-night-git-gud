module.exports = {
  apps: [
    {
      name: 'MLUB night',
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
