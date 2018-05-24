
require 'yaml'

got_data = YAML.load(File.open(File.join(File.dirname(_FILE_), 'config.yaml')))

def inizialaze
    puts "Please Enter Your Account Number:"
        num = gets.to_i
    puts "Enter Your Password:"
        pass = gets.to_i
            if num && pass = [:accaunt_num] && [:password]
               puts "Hello, " + [:name]
            else
                puts "ERROR: ACCOUNT NUMBER AND PASSWORD DON'T MATCH"
                break
            end
    end
            
def menu
    puts"1) Display Balance"
    puts"2) Withdraw"
    puts"3) Log Out"
    puts"\n"
    puts"Choose from the menu above:"
        ans = gets.chomp.to_i
            if (1..3).include?(ans) 
            else
                puts"Incorrect selection"
                break                        
            end

        case ans
        when 1
            puts"Your Current Balance is"+ [:balance]
                      
            end
         when 2
            puts"Enter Amount You Wish to Withdraw:" 
              summ = gets
              if summ =< [:balace]
                balance -= summ.to_f
                puts"Your New Balance is"+ :balance
                balance = balance.new
                    if summ = [:balance]
                        puts "ERROR: THE AMOUNT YOU REQUESTED CANNOT BE COMPOSED FROM BILLS AVAILABLE IN THIS ATM. PLEASE ENTER A DIFFERENT AMOUNT:"
                        summ = gets
                                     
                end
          when 3
          puts [:name] + "Thank You For Using Our ATM. Good-Bye!"
          break
          end
    
     

                
              
