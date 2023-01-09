puts "E-mail Genarator"

print "name: ";
name = gets.chomp;
print "Last name: ";
lastname = gets.chomp;
print "Company: ";
company = gets.chomp;

email = "";

email << name.downcase.split.join();
email << ".";
email << lastname.downcase.split.join();
email << "@";
email << company.downcase.split.join();
email << ".com";

puts email;
