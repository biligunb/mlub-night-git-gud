module.exports = {
  apps: [
    {
      name: 'mlub-night',
      script: 'index.js',
      exec_mode: 'cluster',
      env: {
        NODE_ENV: 'development',
      },
      time: true,
      instances: '2',
    },
  ],
};
