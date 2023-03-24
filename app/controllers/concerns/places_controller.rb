module API
 class PlacesController
    def index
        places = Place.all.map do |place|
            {
                name: place.name,
                city: place.city,
                avg_download_speed: avg_download_speed(place),
                download_speed_unites: download_speed_unites(place),
                number_of_meaurments: number_of_meaurments(place)
            }
        end
    end

    def avg_download_speed(place)

    end

    def download_speed_unites(place)
    end

    def number_of_meaurments(place)
    end
 end    
end