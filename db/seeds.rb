### AD TYPES ###
20.times do |i|
  Adtype.create!(:name => "Type #{i}")
end
### ADS ###
Adtype.all.each do |i|
  Ad.create!(
    :title => "SuperTitle #{i.id}",
    :description => "SuperDescription #{i.id}",
    :price => 100 + i.id,
    :adtype_id => i.id
  )
end

### IMAGES ###
Ad.all.each do |ad|
  Image.create!(:file => File.new("#{Rails.root}/app/assets/images/rails.png"), :ad => ad)
end

### USERS ###
User.create!(
  :email => "admin@admin.com",
  :first_name => "first_admin",
  :last_name => "last_admin",
  :password => "password",
  :role => "admin"
)
User.create!(
  :email => "user@user.com",
  :first_name => "first_user",
  :last_name => "last_user",
  :password => "password",
  :role => "signed_user"
)



