# Contributing to Practical AI Patterns

Thank you for your interest in contributing! This repo is meant to be *practical, deterministic, and cost-aware*.

By contributing, you help improve patterns, examples, and documentation for everyone.

## How to Contribute

### 1. Fork the Repository

- Click Fork on the top-right of this repo
  - Clone your fork locally:

```
git clone git@github.com:Buvanesh-P/practical-ai-patterns.git
cd practical-ai-patterns
```

### 2. Create a Feature Branch

- Always create a new branch for your changes:
```
git checkout -b feature/my-new-pattern
```
  - Use descriptive branch names (e.g., `feature/ticket-prioritization`, `fix/typo-readme`)

### 3. Add or Update Patterns

  - Each pattern should have its own folder under `patterns/`
  - Include:
      - `README.md` → explains the problem, algorithm, and usage
      - `example-ruby/run.rb` (or another language) → reference implementation
  - Follow existing pattern structure for consistency.

### 4. Submit a Pull Request

  1. Push your branch to your fork:
  ```
  git push origin feature/my-new-pattern
  ```

  2. Open a Pull Request to `main` of this repo
  3. Fill in description of changes, including:
      - Pattern overview
      - Example usage
      - Any additional notes or instructions
  4. Reviewers will be automatically requested (if using CODEOWNERS) or manually assigned

### 5. Review & Approval

  - PRs require at least 1 approval before merging
  - Ensure tests/examples run correctly and README is updated

### 6. Code Style & Guidelines

  - Keep solutions simple, deterministic, and cost-aware
  - Add example usage for every new pattern
  - Document any weights, rules, or algorithms clearly in README

### 7. Reporting Issues

Open an issue for:
  - Bugs
  - Feature requests
  - Questions about patterns

Thank you for helping make Practical AI Patterns better! ❤️
