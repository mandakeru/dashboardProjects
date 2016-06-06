class WelcomeController < ApplicationController
    def index
        @project_total = Project.all.count
        @recursos = Resource.all.count
    end
end
