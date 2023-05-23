module Api
    class InternetSpeedsController < ApplicationController
        def index
            render(json: "Hello World!")
        end
        
        def new
            render(json: "Hello World!")
        end
    end
end