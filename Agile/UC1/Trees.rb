require 'net/http'
require 'json'

# Load the subset of the tree data for testing
url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?$limit=306000'
uri = URI(url)
response = Net::HTTP.get(uri)
tree_data = JSON.parse(response)

# Pretty print the data to understand its structure
# pp tree_data # Uncomment to investigate

# Count all the Ash trees
ash_tree_count = tree_data.count { |tree| tree['common_name'].downcase.include?('ash') }

puts "Number of Ash trees: #{ash_tree_count}"
