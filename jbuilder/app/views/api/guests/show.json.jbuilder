# json.guest do
#   json.set! @guest.id do
json.partial! 'guest', guest: @guest
#   end
# end

json.gifts do
  @guest.gifts.each do |gift|
    json.extract! gift, :title, :description
  end
end