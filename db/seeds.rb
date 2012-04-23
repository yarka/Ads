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
admin = User.new(
  :email => "admin@admin.com",
  :first_name => "first_admin",
  :last_name => "last_admin",
  :password => "password"
)
admin.role = "admin"
admin.save!

user = User.new(
  :email => "user@user.com",
  :first_name => "first_user",
  :last_name => "last_user",
  :password => "password"
)
user.role = "signed_user"
user.save!



