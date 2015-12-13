class Person
  attr_accessor :name, :gpa, :major

  def initialize(name, gpa, major)
    @name = name
    @gpa = gpa
    @major = major
  end

  def to_s
    "#{ @name } majors in #{ @major }. GPA: #{ @gpa }."
  end

  def passing?
    if @gpa > "D"
      return false
    else
      return true
    end
  end
end


