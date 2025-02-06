# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

#print transactions

puts blockchain
puts ""

#confirm unique users and create wallets for them with name and amount (starting with zero)

users = []

for transaction in blockchain
  new_user = "#{transaction["to_user"]}"
  users.push (new_user)
end

unique_users = users.uniq

puts "users of this systems"
puts unique_users
puts ""

wallets = {}

for user in unique_users
  wallets[user] = 0
end

puts "wallets created"
puts wallets
puts ""

#Calculate balance per transaction

for transaction in blockchain
  
  sender = transaction["from_user"]
  receiver = transaction["to_user"]
  amount = transaction["amount"]
  
  #for users in wallets
   
    if sender
      wallets[sender] -= amount
    #elsif wallets["users"] == receiver
     # wallets["amount"] = wallets["amount"] + amount
    end
  
  #end
  wallets[receiver] += amount

end

puts "wallets after transactions"
puts wallets
puts ""
puts "----------"
puts "Result:"

for names in wallets
  puts "#{names[0].capitalize}'s KelloggCoin balance is #{names[1]} ."
end 
puts ""