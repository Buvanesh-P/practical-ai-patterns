# Pattern: keyword-based-retrieval

## Problem

Users or agents often need answers from a knowledge base quickly. Direct LLM generation can be costly, slow, and unpredictable.
This pattern provides a deterministic, weighted retrieval approach to fetch the best answer from a knowledge base.

## When to Use

1. FAQ or knowledge base retrieval
2. Ticket triaging or internal documentation queries
3. Low-cost, deterministic solution before introducing LLMs
4. First layer in hybrid RAG pipelines

## How the Pattern Works

### 1. Knowledge Base Preparation

 Each entry in the KB has:
  - `content` → the answer text
  - `keywords` → meaningful words/phrases for matching
  - `weight` → importance of each keyword

### 2. Input Query

 - Receive a query string from a user
 - Normalize text (lowercase, remove punctuation)

### 3. Compute Scores

 For each KB entry:
  - Compare the query against the entry’s keywords
  - Add weight for each matching keyword

 Store total score for each entry

### 4. Select Best Match

- Identify the entry with the highest score
- If multiple entries tie, choose the first or apply tie-breaking
-If no entry has score > 0 → return "No matching answer found"

## 5. Return Result

`answer` → content of the matched entry
`confidence` → sum of matched keyword weights (can be normalized 0–1)

--
## Benefits

- *Deterministic* & explainable: easy to understand why an answer is chosen
- *Cost-efficient:* runs on small servers, no LLM required
- *Scalable:* add more entries or tweak weights easily
- *Hybrid-ready:* can be combined later with semantic search or LLM generation for edge cases

--
## Reference Implementation (Ruby)

*File:* [example-ruby/run.rb](example-ruby/run.rb)

```
result = retrieve_answer("How long does shipping take?")
puts result[:answer]      # => "Orders ship within 3-5 business days."
puts result[:confidence]  # => 0.5
```

Example usage with multiple queries:

```
queries = [
  "Can I return a T-shirt I bought last week?",
  "How long does shipping take?",
  "What payment methods do you accept?",
  "How can I track my order?",
  "Do your T-shirts have any warranty?",
  "Is there a discount on new arrivals?"
]

queries.each do |q|
  result = retrieve_answer(q)
  puts "Query: #{q}"
  puts "Answer: #{result[:answer]}"
  puts "Confidence: #{result[:confidence]}"
  puts "-" * 50
end
```

-- 

## Algorithm Sketch

 - Normalize query
 - For each KB entry, sum weights for matching keywords
 - Select entry with highest score
 - Return answer and confidence
 - If no score > 0 → fallback to “No matching answer found”

## How to Use

 - Copy run.rb to your project
 - Call retrieve_answer(query) with your query string
 - Optionally adjust keywords and weights to improve matching
 - Can be extended with semantic search or vector similarity later

## Contributing 🤝

 - Open issues for feature requests or improvements
 - Submit PRs with tests or documentation updates
 - Keep solutions pragmatic, deterministic, and cost-aware

## Maintainer

Maintained by Buvanesh ❤️
