module Api
 class PlacesController < ApplicationController
    def index
        places = Place.all.map do |place|
            {
                name: place.name,
                city: place.city,
                most_recent_download_speed: most_recent_download_speed(place),
                most_recent_download_unit: most_recent_download_unit(place),
                number_of_meaurments: number_of_meaurments(place)
            }
            render(json:{places: places})
        end
    end

    def most_recent_download_speed(place)
        place.internet_speeds.order("created_at").last.download_speed
    end

    def most_recent_download_unit(place)
        place.internet_speeds.order("created_at").last.download_units
    end

    def number_of_meaurments(place)
        place.internet_speeds.count
    end
 end    
end