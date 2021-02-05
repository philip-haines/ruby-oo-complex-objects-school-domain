# code here!
require 'pry'
class School
    attr_accessor :roster, :name

    def initialize (name, roster ={})
        @name = name
        @roster = roster
    end

    def add_student(name, grade)
        if !roster.has_key?(grade)
            roster[grade] = [name]
        else
            roster[grade] << name
        end
    end

    def grade (grade_in)
        roster[grade_in]
    end

    def sort
       roster.each do |key, value|
        roster[key] = value.sort
       end
    end

end


school = School.new("Bayside High School")
school.add_student("Zach Morris", 9)
school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)


p school
0