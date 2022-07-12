class WatchmodeClient
  WATCHMODE_API_KEY = Rails.application.credentials.dig(:watchmode, :api_key)
  include HTTParty
  base_uri 'api.watchmode.com'

  def initialize
    @options = { query: { apiKey: WATCHMODE_API_KEY } }
  end

  def genres
    self.class.get("/v1/genres/", @options)
  end

  def sources
    self.class.get("/v1/sources/", @options)
  end

end
