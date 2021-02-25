# Git Hooks's Guide
  - Install husky & lint-staged
    ```
    npm install husky lint-staged --save-dev
    ```
  - Create .huskyrc.json
    ```
    {
      "hooks": {
        "pre-commit": "lint-staged"
      }
    }
    ```
  - Create .lintstagedrc.json
    ```
    {
      "**/*.+(js)": [
        "eslint --fix ."
      ]
    }
    ```
  - Test
