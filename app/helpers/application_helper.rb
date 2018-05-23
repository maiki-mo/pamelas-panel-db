module ApplicationHelper
  def get_quotes
    @quotes = [
      "Give a kid a smoke and he’ll be happy for a day.  Teach him how to smoke...he’ll be happy for a whole shortened life.",
      "I want to be a teacher. The greatest teacher ever.",
      "For you, she maybe just someone among the 400 students, but for a student, there's only one teacher for them.",
      "Teacher Banzai!!!",
      "I am Onizuka Eikichi, 22 years old.  At your service!",
      "It is my job to make school fun."
    ]
  end
  def get_rand
    @rand = rand(5)
  end
end
