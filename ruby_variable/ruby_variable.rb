# $global_var = 10

# puts " Golobal variable in here is #{$global_var}"

# class class1
#     def print_glo
#         puts " Global variable in class1 is #{$global_var}"
#     end
# end

# obj = class1.new
# obj.print_glo

class Customer
    @@total = 0
    def total_no_of_customers()
        @@total +=1
        puts "Total number of customers: #{@@otal}"
    end
end
cus1 = Customer.new
cus2 = Customer.new




