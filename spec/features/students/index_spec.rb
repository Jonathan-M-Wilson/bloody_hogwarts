require 'rails_helper'

RSpec.describe "Students index page" do
  before(:each) do
    @harry = Student.create!(name: "Harry", age: 12, house: "Gryffindor")
    @george = Student.create!(name: "George", age: 13, house: "Gryffindor")
  end

  it "shows student names" do
    visit "/students"

    expect(page).to have_content(@harry.name)
  end

  it "shows student age" do
    visit "/students"

    expect(page).to have_content(@harry.age)
  end

  it "shows student house" do
    visit "/students"

    expect(page).to have_content(@harry.house)
  end

  it "shows average age of all students" do
    visit "/students"

    expect(page).to have_content(12.5)    
  end
end
