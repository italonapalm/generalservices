puts "User"
u = User.create!(email: 'italonapalm@gmail.com', password: '12345678')

puts "Service"
s = Service.create!(
	user: u, 
	visibility: true, 
	initialDate: Time.now, 
	finalDate: Time.now + 4.days, 
	description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 	
)
