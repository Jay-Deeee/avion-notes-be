require './exercise.rb'

# a
describe 'find_smallest_integer' do
  it 'should return smallest integer of array' do
    expect(find_smallest_integer([34, 15, 88, 2])).to eq 2
    expect(find_smallest_integer([34, -345, -1, 100])).to eq -345
  end
end

# b
describe 'count_positives_sum_negatives' do
  it 'should return positives count and sum of all negatives' do
    data = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]
    expect(count_positives_sum_negatives(data)).to eq [10, -65]
    expect(count_positives_sum_negatives([])).to eq []
  end
end

# c
describe 'liters' do
  it 'returns correct value of liters per hour' do
    expect(liters(3)).to eq 1
    expect(liters(6.7)).to eq 3
    expect(liters(11.8)).to eq 5
  end
end

# d
describe 'is_isogram' do
  it 'returns true if input is an isogram' do
    expect(is_isogram("Dermatoglyphics")).to eq true
    expect(is_isogram("aba")).to eq false
    expect(is_isogram("moOse")).to eq false
    expect(is_isogram("")).to eq true
  end
end

# e
describe 'unique_in_order' do
  it 'returns array without characters repeating in sequence' do
    expect(unique_in_order('AAAABBBCCDDAABBB')).to eq ['A', 'B', 'C', 'D', 'A', 'B']
    expect(unique_in_order('ABBCcAD')).to eq ['A', 'B', 'C', 'c', 'A', 'D']
    expect(unique_in_order([1,2,2,3,3])).to eq [1, 2, 3]
    expect(unique_in_order("")).to eq []
  end
end

# f
describe 'strip_vowels' do
  it 'strips vowels from string' do
    expect(strip_vowels("This website is for losers LOL!")).to eq "Ths wbst s fr lsrs LL!"
  end
end

# g
describe 'century' do
  it 'returns century from year' do
    expect(century(1705)).to eq 18
    expect(century(1900)).to eq 19
    expect(century(1601)).to eq 17
    expect(century(2000)).to eq 20
  end
end

# h
describe 'list_names' do
  it 'extracts names and returns into a comma separated string' do
    simpsons = [ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ]
    expect(list_names(simpsons)).to eq "Bart, Lisa & Maggie"
    expect(list_names(simpsons[0..1])).to eq "Bart & Lisa"
    expect(list_names(simpsons[0..0])).to eq "Bart"
  end
end
