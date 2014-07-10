class TherapiesController < ApplicationController
  def index
    @therapies = Therapy.all.order(:ordering)
  end
end
