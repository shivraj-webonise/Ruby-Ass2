require 'csv'
module Company_list

    class Company
        attr_accessor :company_nam, :director, :turnover
    
        def initialize(company_n)
            @company_name = company_n
        end
    
        def get_company_details
            puts ("Company name: #{@company_name}")
            puts ("Company director: #{@director}")
            puts ("Company turnover: #{@turnover}")
        end

        def set_company_name(name)
            @company_name = name
        end

        def set_company_director(d_name)
            @director = d_name
        end

        def set_company_turnover(c_turnover)
            @turnover = c_turnover
        end

        def get_employee_details
            File.open('employee_details.csv') do |file|
                file.each do |line|
                    puts line
                end
            end
            
        end

        
    
    end


    class Product < Company

        attr_accessor :product_name, :product_revenue

        def initialize(company_n,product_n)
            super(company_n)
            @product_name = product_n
        end

        def get_product
            @product_name
        end

        def set_product_revenue(revenue)
            @product_revenue = revenue
        end

        def get_product_revenue
            if(@product_revenue ==  nil)
                puts "Enter revenue details First"
                return
            else
                puts("Revenue : #{product_revenue}")
            end
        end


        def set_product(p_name)
            @product_name = p_name
        end
    end



    class Services < Company

        attr_accessor :service_name, :service_revenue

        def initialize(company_n,service_n)
            super(company_n)
            @service_name = service_n
        end

        def get_service
            @service_name
        end

        def set_service(s_name)
            @service_name = s_name
        end


        def set_service_revenue(revenue)
            @service_revenue = revenue
        end

        def get_service_revenue
            if(@service_revenue ==  nil)
                puts "Enter revenue details First"
                return
            else
                puts("Revenue : #{service_revenue}")
            end
        end
    end
    
end
