json.array!(@guilds) do |guild|
  json.extract! guild, :id
  json.url guild_url(guild, format: :json)
end
