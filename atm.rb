
require 'yaml'
info = YAML.load(File.open(File.join(File.dirname(_FILE_), config.yml)))

class BankAccount

attr_accessor :name, :password, :accaunt_num, :balance

def initialize
    @your_account = []
    open()
end

def open
    if File.exist?("config.yml")
    @your_account = YAML.load_file("config.yml")
    end
end

 def account_review(your_account)
    puts @your_acccount
end

def run
    loop do
        puts "Welcome to the bank."
        puts "1. Create New Account"
        puts "2. Review Your Account Information"
        puts "3. Check Your Balance"
        puts "4. Exit"
        puts "Enter your choice:"
            input = gets.chomp
            case input
            when '1'
                new_account(first_name, last_name, address)
            when '2'
                account_review(your_account)
            when '4'
                save()
                break
            end
    end
end

end

#user = User.find_for_authentication(username: params[:username])
#user.valid_password?(params[:password])

def login
  user = User.find_for_authentication(acc_num: login_params[:accaunt_num])

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
include initialize
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
               puts"Your New Balance is"+ :balance
                balance = balance.new
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
            

                
              
