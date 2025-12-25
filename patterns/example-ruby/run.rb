# Define rules and weights for categories
TICKET_RULES = {
  billing: {
    keywords: ["refund", "charged", "payment", "invoice", "order"],
    weight: 0.6
  },
  technical: {
    keywords: ["error", "bug", "not working", "broken", "issue"],
    weight: 0.5
  },
  shipping: {
    keywords: ["delayed", "not received", "lost", "shipping", "arrived", "order", "return"],
    weight: 0.4
  }
}

# Main method to route ticket based on rules
def route_ticket(text)
  scores = Hash.new(0.0)

  TICKET_RULES.each do |category, rule|
    rule[:keywords].each do |kw|
      scores[category] += rule[:weight] if text.downcase.include?(kw)
    end
  end

  best_match = scores.max_by { |_, score| score }

  {
    category: best_match&.first || :manual,
    confidence: best_match&.last || 0.0
  }
end

# Example usage with realistic human complaints
customer_queries = [
  "Hi, I placed an order for a T-shirt on 20th Dec but it hasn't arrived yet. Please help!",
  "Hello, my recent order came damaged. Can you fix this urgently?",
  "I was charged twice and need a refund.",
  "The app is not working and I keep getting an error when I try to login.",
  "I have a question about your return policy for T-shirts."
]

customer_queries.each do |query|
  result = route_ticket(query)
  puts "Query: #{query}"
  puts "Category: #{result[:category]}"
  puts "Confidence: #{result[:confidence]}"
  puts "-" * 50
end
