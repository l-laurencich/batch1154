# require "pry-byebug"


def capitalize(first_name, last_name)
  first_name.capitalize!
  last_name = last_name.capitalize
  #remove binding.pry before pushing to production
  binding.pry
  "#{first_name} #{last_name}"
end


puts capitalize("boRis", "knezevic")