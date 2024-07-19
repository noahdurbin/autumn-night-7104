class AvatarService
  def conn
    Faraday.new('https://last-airbender-api.fly.dev')
  end

  def search(nation)
    conn.get("/api/v1/characters?perPage=100&affiliation=#{nation}")
  end
end
