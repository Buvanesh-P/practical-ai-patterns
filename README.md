# Practical AI Patterns

A concise collection of practical, cost-aware AI patterns for common business workflows, focused on solving real problems without unnecessary complexity. This repository favors deterministic and hybrid approaches first, treating Large Language Models (LLMs) as optional enhancements — not defaults.

## TL;DR 💡

Use rules, scoring, retrieval, and lightweight models to solve real business problems efficiently before adopting costly LLM-based solutions.

## Why this exists

Many teams adopt AI because of market pressure rather than clear business need, which often leads to:
- High and unpredictable costs
- Over-engineered solutions
- Low explainability

This repository documents pragmatic patterns that prioritize predictability, cost-efficiency, and explainability.

## What we mean by "AI" 🔍

"AI" here is used broadly and practically:
- Decision systems and rule engines
- Scoring models and lightweight ML
- Retrieval-first systems (RAG without generation)
- Hybrid deterministic + AI approaches

LLMs are used only when they add measurable value.

## Who is this for

- Backend engineers and architects
- Product and technical leads planning AI features
- Teams who need measurable value without runaway costs

## Current Patterns (V1)
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

## Planned / Future Patterns (ideas)

 - Validation & Data Cleaning — automatic validation of user input or datasets
 - Lightweight Recommendation Engine — simple product/service recommendations using scoring and heuristics   
 - Hybrid Ticket Prioritization — deterministic scoring + optional AI scoring for complex tickets
 - Monitoring & Alert Classification — categorize logs and alerts without heavy ML

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
