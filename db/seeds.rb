### ADS ###
Ad.destroy_all
20.times do |i|
  Ad.create!(
    :title => "SuperTitle #{i}",
    :description => "SuperDescription #{i}",
    :price => 100 + i
  )
end

### IMAGES ###
Ad.all.each do |ad|
  Image.create!(:file => File.new("#{Rails.root}/app/assets/images/rails.png"), :ad => ad)
end
