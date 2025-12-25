# Practical AI Patterns

A concise collection of practical, cost-aware AI patterns for common business workflows, focused on solving real problems without unnecessary complexity. This repository favors deterministic and hybrid approaches first, treating Large Language Models (LLMs) as optional enhancements — not defaults.

---

## TL;DR 💡

Use rules, scoring, retrieval, and lightweight models to solve real business problems efficiently before adopting costly LLM-based solutions.

---

## Why this exists

Many teams adopt AI because of market pressure rather than clear business need, which often leads to:
- High and unpredictable costs
- Over-engineered solutions
- Low explainability

This repository documents pragmatic patterns that prioritize predictability, cost-efficiency, and explainability.

---

## What we mean by "AI" 🔍

"AI" here is used broadly and practically:
- Decision systems and rule engines
- Scoring models and lightweight ML
- Retrieval-first systems (RAG without generation)
- Hybrid deterministic + AI approaches

LLMs are used only when they add measurable value.

---

## Who is this for

- Backend engineers and architects
- Product and technical leads planning AI features
- Teams who need measurable value without runaway costs

---

## Patterns (v1)

1. Ticket Routing & Priority Classification — deterministic + scoring
2. Retrieval-First RAG (without generation) — retrieval + filtering

Each pattern includes:
- Problem definition
- When to use it
- A language-agnostic algorithm
- A minimal reference implementation

---

## Repository structure

```patterns/
├── ticket-routing/
└── retrieval-first-rag/
```
Each pattern folder contains a README, an algorithm sketch, and a small reference implementation.

---

## How to use this repo

1. Read the pattern README for when and how to apply it.
2. Use the reference implementation as a starting point — adapt rules and thresholds to your data.
3. Measure cost, latency, and accuracy before introducing more complex models.

---

## Contributing 🤝

Contributions are welcome. Please:
- Open issues for feature requests or improvements
- Submit PRs with tests and documentation updates
- Keep solutions pragmatic and cost-aware

---

## Maintainer

Maintained by **Buvanesh**. Contributions and discussions are welcome ❤️

---

## License

License will be added once the initial patterns stabilize.
