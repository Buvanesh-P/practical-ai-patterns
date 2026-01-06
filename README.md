# Practical AI Patterns

A curated collection of practical AI patterns for common business problems.

This is not a library, framework, or product.
It is a set of thinking patterns and algorithms that help teams solve problems without jumping straight to costly AI or LLM solutions

## TL;DR 💡

Before using LLMs, agents, or complex AI systems:

👉 Try rules, scoring, and retrieval-first patterns.
They are cheaper, faster, easier to explain, and often good enough.

## ⚠️ Important: What this is (and what it is not)
This is:
 - A collection of patterns
 - Language-agnostic algorithms
 - Simple reference examples
 
This is NOT:
 - ❌ A framework
 - ❌ A package to install
 - ❌ An SDK or API
 - ❌ A replacement for LLMs
You read and apply ideas, not import code.

## Why this exists

Today, many teams add AI because:
 * Everyone else is doing it
 * Stakeholders expect “AI features”
 * Fear of falling behind

This often leads to:
 * High and unpredictable costs
 * Over-engineered systems
 * Hard-to-debug behavior
 * Low trust from users and teams
These patterns show simpler alternatives first.

This repository documents pragmatic patterns that prioritize predictability, cost-efficiency, and explainability.

## Who is this for

- Backend engineers and architects
- Product and technical leads planning AI features
- Teams who need measurable value without runaway costs

## Current Available Patterns (V1)
### 1️⃣ Ticket Routing & Priority Classification

  - Use case: Classify support tickets and route them to the correct team
  - Approach: Deterministic + weighted keyword scoring
  - Output: Category and confidence score
  - Folder: [patterns/ticket-routing](patterns/ticket-routing/README.md)

### 2️⃣ Retrieval-First RAG (Deterministic)

  - Use case: Retrieve answers from a knowledge base (FAQ, docs) without LLM generation
  - Approach: Weighted keyword matching per KB entry
  - Output: Answer content and confidence score
  - Folder: [patterns/retrieval-first-rag](patterns/retrieval-first-rag/README.md)

## How to use this repo

1. Read the pattern README for when and how to apply it.
2. Use the reference implementation as a starting point — adapt rules and thresholds to your data.
3. Measure cost, latency, and accuracy before introducing more complex models.

## Pattern Roadmap 🚀

This repository is designed to grow with new practical AI patterns for business workflows. Each pattern should be:

 - Deterministic or hybrid — start with rules, scoring, or lightweight models
 - Cost-efficient — avoid unnecessary LLM/API usage unless justified
 - Explainable & maintainable — easy to understand and extend

## How to Add a New Pattern

1. Create a new folder under `patterns/` named after the pattern
2. Include:
     - `README.md` → explain problem, algorithm, and usage
     - `example-ruby/run.rb` (or other language) → reference implementation
3. Update the main README with the new pattern
4. Submit a PR to share your pattern with the community

## Contributing 🤝

Contributions are welcome. Please:
- Open issues for feature requests or improvements
- Submit PRs with tests and documentation updates
- Keep solutions pragmatic and cost-aware

## Maintainer

Maintained by **Buvanesh**. Contributions and discussions are welcome ❤️

## License

Add a LICENSE file (e.g., MIT) to permit reuse.
