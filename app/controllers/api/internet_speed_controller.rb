module Api
  class InternetSpeedController < BaseController
    def create
      place = Place.create!(
        name: params[:name],
        city: params[:city],
        address: params[:address]
      )

      InternetSpeed.create!(
        place:,
        download_speed: params[:download_speed],
        download_units: params[:download_units]
      )

      render(json: {}, status: :created)
    end
  end
end
