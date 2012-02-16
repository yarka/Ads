### ADS ###
Ad.destroy_all
20.times do |i|
  Ad.create!(
    :title => "SuperTitle #{i}",
    :description => "SuperDescription #{i}",
    :image_url => "#{Rails.root}/app/assets/images/rails.png",
    :price => 100 + i
  )
end
