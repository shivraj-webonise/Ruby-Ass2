require_relative "module.rb"
include Company_list

array1 = Array.new

array2 = Array.new

array1 = [1,4,8,3,7,12,76,33]
array2 = [1,4,8,3,7,12,76,32]


# Even numbers using Simple ruby Blocks
cnt = 0

array1.select{|num|
    if(num%2 == 0)
        cnt = cnt + 1
    end
}

puts cnt 

cnt = 0 



# Even numbers using Procs 

cnt = 0

even_numbers = Proc.new {|num|
if (num%2) == 0 
    cnt = cnt + 1
end
}

arr1 = array1.select(&even_numbers)

puts cnt

cnt = 0

arr2 = array2.select(&even_numbers)

puts cnt



# Even Numbers Using Lambda 
cnt = 0


even_numbers = lambda {|num|
if (num%2) == 0 
    cnt = cnt + 1
end
}

arr1 = array1.select(&even_numbers)

puts cnt

cnt = 0

arr2 = array2.select(&even_numbers)

puts cnt




Company1 = Company_list::Product.new("Amazon","Alexa")

Company1.set_company_director("jeff")
Company1.set_company_turnover(2000) 
Company1.set_product_revenue("1Billion")
Company1.get_company_details
Company1.get_product_revenue

Company1.get_employee_details


