
require 'yaml'
info = YAML.load(File.open(File.join(File.dirname(_FILE_), config.yml)))

print "Please Enter Your Account Number:"
acNum = gets
print "Enter your password:"

#user = User.find_for_authentication(username: params[:username])
#user.valid_password?(params[:password])

def login
  user = User.find_for_authentication(email: login_params[:email])

  if user.valid_password?(login_params[:password])
    user.remember_me = login_params[:remember_me]
    sign_in_and_redirect(user, event: :authentication)
  end
end

private
def login_params
  params.require(:user).permit(:email, :password, :remember_me)
end

module Run
include #файл входа
    loop do 
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
            puts"Your Current Balance is"+ :balance
                       
            end
         when 2
            puts"Enter Amount You Wish to Withdraw:" 
              summ = gets
              if sum =< balace
              balance += summ.to_f
               puts"Your New Balance is"+ balance
                else 
                    puts "ERROR: INSUFFICIENT FUNDS!! PLEASE ENTER A DIFFERENT AMOUNT:"
                    summ = gets
                    puts"1)Deposit  2)Withdrawal 3)Transfer 4)Balance 5)Exit"
                    print"your choice :"
                    ans = gets.chomp.to_i
                    case ans 
                    exit
                end
          when 3
          puts :name + "Thank You For Using Our ATM. Good-Bye!"
          break
          end
            

                
                puts"\n"
                puts "What do you want to do today?"
                puts"-----------------------------------"
                puts"1)Deposit  2)Withdrawal 3)Transfer 4)Balance 5)Exit"
                print"your choice :"
                ans = gets.chomp.to_i
                case ans 
                
                end 

            end
       
