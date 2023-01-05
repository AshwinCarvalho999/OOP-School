require_relative '../rental'
require_relative '../person'
require_relative '../book'

describe 'Rental' do
  context 'This should create an instance of a rental' do
    it 'return true for person' do
      person = Person.new(34, 'Ahmad', true)
      book = Book.new('Rich Dad Poor Dad', 'Robert Kiyosaki')
      rental = Rental.new('11/23/2022', person, book)

      expect(rental.person) == person
    end
  end
end
