require_relative '../studen'

# Test for initialize method
describe Student do
  it 'should create instance of the student class with 4 parameters' do
    student = Student.new(5, 16, 'Name', 'Parent Permission')
    expect(student).to be_an_instance_of Student
  end

  it 'should return play hooky from the play_hooky method of the Student class' do
    student = Student.new(5, 16, 'Name', 'Parent Permission')
    play = student.play_hooky
    expect(play).to eq('¯(ツ)/¯')
  end
end
