require 'csv'
samples = Array.new
samples = CSV.read("sample/comma.txt")
# sample_two = File.open("sample/space.txt")
# sample_three = File.open("sample/pipe.txt")
samples.each('sample/comma.txt') do |line|
  entry = line
  entry.map do |item| item.gsub!(/\s/, "") end
  samples << entry
end







# parsed_sample_one = sample_one.map do |line|
#   p line.to_a
# end
# p "--------------"
# p parsed_sample_one
# parsed_sample_two = sample_two.each do |line|
#   p line.split(" ")
# end
# p "--------------"
# parsed_sample_three = sample_three.each do |line|
#   p line.split(" | ")
# end

# all_samples = parsed_sample_three + parsed_sample_two + parsed_sample_one
# p all_samples
