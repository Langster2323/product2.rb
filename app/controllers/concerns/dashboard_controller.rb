class DashboardController < ApplicationController
  def home
    render template:'dashboard/index.html.erb'
  end
end
