cr = User.create!(name:"Ronaldo", first_name:"Cristiano", email: "c.ronaldo@rm.com", password: "secreto", password_confirmation: "secreto")
lm = User.create!(name:"Bezema", first_name:"Karim", email: "k.benzema@rm.com", password: "secreto", password_confirmation: "secreto")
User.create!(name:"Messi", first_name:"Lionel", email: "l.messi@barca.com", password: "secreto", password_confirmation: "secreto")
User.create!(name:"Suarez", first_name:"Luis", email: "l.suarez@braca.com", password: "secreto", password_confirmation: "secreto")

5.times do |i|
    TdyRequest.create!(
    destination: "Dest ##{i}",
    purpose: "Purpose ##{i}",
    departure: DateTime.parse('3rd Feb 2001 04:05:06+03:30'),
    return: DateTime.parse('3rd Feb 2001 04:05:06+03:30'),
    users: [cr,lm]
     )
end