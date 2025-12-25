# Pattern: Ticket Routing & Priority Classification

## Problem

Customer support tickets or internal issues need to be classified and routed efficiently.
Manual routing or complex ML models can be costly and slow.

## When to Use:

1. Small-to-medium businesses with predictable ticket categories
2. When you want a low-cost deterministic solution first
3. As a fallback or hybrid system with AI-enhanced scoring

## Pattern Overview:
Deterministic + scoring pattern:

```
Ticket content -> Keyword/Rule matching -> Priority scoring -> Route to correct team
```

## Benefits:

1. Fast and predictable
2. Easy to explain
3. Minimal infrastructure and cost
4. Can integrate AI scoring later if needed

## Reference Implementation (Ruby):

see `patterns/ticket-routing/example-ruby/run.rb`

Algorithm Sketch:

- Take the ticket content as input
- Convert text to lowercase for normalization
- Match keywords to determine priority (high, medium, low)
- Map priority to routing target (Support Level 1, 2, or Backlog)
- Return priority and route
- Optionally log results for audit or metrics

## Maintainer

Maintained by Buvanesh. Contributions and discussions are welcome ❤️
