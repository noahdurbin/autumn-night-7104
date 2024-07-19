class SearchController < ApplicationController
  def search
    @characters = SearchFacade.new.search(params[:nation])
    @nation = params[:nation]
  end
end
