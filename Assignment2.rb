require_relative "module.rb"
include Company_list

array1 = Array.new

array2 = Array.new

array1 = [1,4,8,3,7,12,76,33,75,91]
array2 = [1,4,8,3,7,12,76,32,98]


# Even numbers using Simple ruby Blocks
cnt = 0

array1.select{|num|
    if(num.even?)
        cnt = cnt + 1
    end
}

puts cnt 

cnt = 0 



# Even numbers using Procs 


arr1 = Proc.new{
    cnt = 0
    array1.select{ |num|
        if num.even?
            cnt = cnt + 1
        end
    }
    puts cnt

}


arr1.call()



# Even Numbers Using Lambda 

arr2 = lambda {
    cnt = 0
    array2.select{|num|
        if num.even?
            cnt = cnt + 1
        end
    }
    puts cnt
}


arr2.call()



Company1 = Company_list::Product.new("Amazon","Alexa")

Company1.set_company_director("jeff")
Company1.set_company_turnover(2000) 
Company1.set_product_revenue("1Billion")
Company1.get_company_details
Company1.get_product_revenue

Company1.get_employee_details


