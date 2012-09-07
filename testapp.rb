require 'geonames'
  begin
    loop do

      print "\nenter lat,lon(e.g 23,45): " 
      value = gets
      lat = value.split(",")[0].to_i
      lon = value.split(",")[1].to_i
        
      begin

      places_nearby = Geonames::WebService.find_nearby_place_name(lat, lon)
      print places_nearby[0].country_name

      rescue NoMethodError

      print "Sorry that lat lon does not exist, try again"

      end

     

    end

  end
#