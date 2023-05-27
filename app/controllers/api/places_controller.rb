module Api
  class PlacesController < BaseController
    def index
      places = get_matching_places(params['search_term']).map do |place|
        {
          name: place.name,
          city: place.city,
          most_recent_download_speed: most_recent_download_speed(place),
          most_recent_download_units: most_recent_download_units(place),
          number_of_measurments: number_of_measurments(place)
        }
      end
      render(json: { places: })
    end

    def most_recent_download_speed(place)
      place.internet_speeds.order('created_at').last&.download_speed
    end

    def most_recent_download_units(place)
      place.internet_speeds.order('created_at').last&.download_units
    end

    def number_of_measurments(place)
      place.internet_speeds.count
    end

    def get_matching_places(search_term)
      if search_term.blank?
        Place.all.order('created_at DESC')
      else
        Place.where('name LIKE :search_term OR city LIKE :search_term',
                    search_term: "%#{search_term}%").order('created_at DESC')
      end
    end
  end
end
