# step 1: understand the problem - fully
# step 2: breakdown the logic
# step 3: turn logic into code

def count_letters(x)
  letter_positions = {}
  x.each do |word|
    word.split('').each_with_index do |letter, index|
      if letter_positions[letter] #is true
        letter_positions[letter][:count] += 1
        letter_positions[letter][:positions] << index
      else
        letter_positions[letter] = {
          count: 1, 
          positions: [index]
        }
      end
    end
  end
  letter_positions
end

p count_letters(["lighthouse is in the house..."])

