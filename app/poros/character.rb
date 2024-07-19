class Character
  attr_reader :name, :allies, :enemies, :affiliation, :photo_url

  def initialize(data)
    @name = data[:name]
    @allies = clean_data(data[:allies])
    @enemies = clean_data(data[:enemies])
    @affiliation = data[:affiliation]
    @photo_url = data[:photoUrl]
  end

  def clean_data(array)
    return [] if array.nil?
    array.reject { |item| item.empty? }
  end
end
