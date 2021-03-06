# make array containing first and last names upper case
# make array random numbers between 111111 and 999999
# create email address Awilson123@ada.Com
# write code to print all columns.

# make array containing first and last names upper case
student_data_array = Array.new
number_students = 5


# instruct user
puts "\nPlease separately enter your first and last name."

# User info input
number_students.times do  # http://stackoverflow.com/questions/38730400/ruby-how-to-loop-hashes-within-an-array
  puts "\nPlease enter your first name."
  student_first_name = gets.chomp.upcase
  puts "Please enter your last name"
  student_last_name = gets.chomp.upcase

  # student id number
  student_ID_number = rand(111111..999999)
  # check if random_number is unique
  while student_data_array.include?(student_ID_number)
    student_ID_number = rand(111111..999999)
  end

  # want to make email address in format awilson123@ada.org
  
  firstNameinitials = ""
  student_first_name.split(" ").map do |temp_name|
    firstNameinitials = firstNameinitials + temp_name.slice(0)
  end

  student_email = firstNameinitials + student_last_name + student_ID_number.to_s.slice(3..5) + "@ada.org"
  # link student info
  hash = {
    student_full_name: student_first_name + " " + student_last_name,
    student_ID_number: student_ID_number,
    student_email: student_email
  }

  # store outside loop
  student_data_array << hash
end

# Display accounts to user
puts "\nHere are our accounts!\n\n"
number_students.times do |x|
  puts student_data_array[x][:student_full_name].to_s + "-" + student_data_array[x][:student_ID_number].to_s + "-" + student_data_array[x][:student_email].to_s
end
