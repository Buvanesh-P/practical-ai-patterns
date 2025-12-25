
# Define a simple knowledge base with keywords and weights
KNOWLEDGE_BASE = {
  "return policy" => { answer: "You can return items within 30 days of delivery.", weight: 0.6 },
  "shipping time" => { answer: "Orders ship within 3-5 business days.", weight: 0.5 },
  "payment methods" => { answer: "We accept cards, UPI, and wallets.", weight: 0.4 },
  "order tracking" => { answer: "You can track your order using the tracking ID sent to your email.", weight: 0.5 },
  "product warranty" => { answer: "All T-shirts come with a 6-month warranty for manufacturing defects.", weight: 0.4 }
}

# Main method to retrieve the best answer for a query
def retrieve_answer(query)
  scores = Hash.new(0.0)

  KNOWLEDGE_BASE.each do |key, data|
    key.split.each do |kw|
      scores[key] += data[:weight] if query.downcase.include?(kw)
    end
  end

  best_match = scores.max_by { |_, score| score }

  if best_match && best_match.last > 0
    {
      answer: KNOWLEDGE_BASE[best_match.first][:answer],
      confidence: best_match.last
    }
  else
    {
      answer: "No matching answer found.",
      confidence: 0.0
    }
  end
end

# Example usage with realistic queries
queries = [
  "Can I return a T-shirt I ordered last week?",
  "I ordered a T-shirt last week, How long does shipping take?",
  "What payment methods do you accept?",
  "How can I track my order?",
  "Do your T-shirts have any warranty?",
  "Is there a discount on new arrivals?"  # will return "No matching answer found"
]

queries.each do |q|
  result = retrieve_answer(q)
  puts "Query: #{q}"
  puts "Answer: #{result[:answer]}"
  puts "Confidence: #{result[:confidence]}"
  puts "-" * 50
end
