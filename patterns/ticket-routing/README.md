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
Ticket content -> Keyword matching with weights -> Category scoring -> Route to correct team
```

## Benefits:

1. Fast and predictable
2. Easy to explain
3. Minimal infrastructure and cost
4. Can integrate AI scoring later if needed

## Reference Implementation (Ruby):

*See File:* `example-ruby/run.rb`

This file contains a reusable method `route_ticket(text)` that takes a customer complaint or query as input and returns:

 - `:category` → predicted ticket category
 - `:confidence` → combined weight score indicating match strength

## Example usage:
```
route_ticket("I was charged twice and need a refund")
# => { category: :billing, confidence: 1.2 }
```
The `example-ruby/run.rb` also includes multiple realistic customer queries, e.g.:

```
customer_queries = [
  "Hi, I placed an order for a T-shirt on 20th Dec but it hasn't arrived yet. Please help!",
  "Hello, my recent order came damaged. Can you fix this urgently?",
  "I was charged twice and need a refund.",
  "The app is not working and I keep getting an error when I try to login.",
  "I have a question about your return policy for T-shirts."
]
```
Running the file prints the category and confidence for each query, demonstrating the pattern in action.

Algorithm Sketch:

- Take ticket content as input
- Convert text to lowercase
- Match keywords from each category and sum their weights
- Identify the category with the highest total score
- Return category and confidence score

## How to Use

1. Copy run.rb to your project or reference it directly
2. Call route_ticket(text) with your customer query
3. Optionally adjust TICKET_RULES weights or keywords for your business
4. Use the results to route tickets automatically

## Maintainer

Maintained by Buvanesh. Contributions and discussions are welcome ❤️
