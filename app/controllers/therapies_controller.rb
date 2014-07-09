class TherapiesController < ApplicationController
  def index
    @therapies = Therapy.all
  end
end
