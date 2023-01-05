require_relative '../person'
require_relative '../rental'
require_relative '../book'

# Test for initialize method
describe Person do
  it 'should create instance of the person class with 3 parameters' do
    person = Person.new(16, 'Name', 'Parent Permission')
    expect(person).to be_an_instance_of Person
  end

  it 'Can he/she?!' do
    person = Person.new(16, 'Name', 'Parent Permission')
    age = @age
    parent_permission = @parent_permission
    expect(person.can_use_services?) == (age || parent_permission)
  end

  it 'return instance of rental' do
    person = Person.new(16, 'Name', 'Parent Permission')
    book = Book.new('Title', 'Author')
    rental = Rental.new('24-11-2022', book, person)
    add_rental = person.add_rentals('24-11-2022', book)
    expect(add_rental) == rental
  end
end

# Test for age
describe '#age' do
  it 'should return the right age' do
    person = Person.new(16, 'My Name', 'Yes')
    expect(person.age).to eq(16)
  end
end

# Test for name
describe '#name' do
  it 'should return the right name' do
    person = Person.new(16, 'My Name', 'Yes')
    expect(person.name).to eq('My Name')
  end
end

# Test for parent permission
describe '#parent_permission' do
  it 'should return the right parent permission' do
    person = Person.new(16, 'My Name', 'Yes')
    expect(person.parent_permission).to eq('Yes')
  end
end
