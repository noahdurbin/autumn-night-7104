class SearchFacade
  def initialize
    @service = AvatarService.new
  end

  def search(params)
    response = @service.search(params)
    array = JSON.parse(response.body, symbolize_names: true)
    @results = array.map do |data|
      Character.new(data)
    end
  end
end
