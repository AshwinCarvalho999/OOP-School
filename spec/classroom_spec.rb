require_relative '../classroom'

describe 'Classroom' do
  before :each do
    @label = 122
    @students = []
  end

  classroom = Classroom.new(@label)
  context 'This should create an instance of Classroom class' do
    it 'Classroom instance' do
      expect(classroom.class) == Classroom
    end
  end
  context 'This should create the students list' do
    it 'In the Classroom list' do
      expect(Classroom.instance_methods(false).include?(:add_student)).to eq true
    end
  end
end
