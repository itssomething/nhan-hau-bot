require 'discordrb'
require 'dotenv'
require 'byebug'

Dotenv.load

bot = Discordrb::Bot.new(token: ENV['TOKEN'], fancy_log: true)
IMAGE_URL = 'https://manhvd-discord-bot-image.s3.ap-southeast-1.amazonaws.com/C7D41C00-BC3E-4A63-8F7F-1EC5AF0CCD5E.jpg'
puts "This bot's invite URL is #{bot.invite_url}."
puts 'Click on it to invite it to your server.'

bot.message(content: 'Ping!') do |event|
  # byebug
  event.respond 'Pong!'
end

# bot.register_application_command(:spongecase, 'Are you mocking me?', server_id: ENV.fetch('SLASH_COMMAND_BOT_SERVER_ID', nil)) do |cmd|
#   cmd.string('message', 'Message to spongecase')
#   cmd.boolean('with_picture', 'Show the mocking sponge?')
# end

# bot.application_command(:spongecase) do |event|
#   ops = %i[upcase downcase]
#   text = event.options['message'].chars.map { |x| x.__send__(ops.sample) }.join
#   event.respond(content: text)

#   event.send_message(content: 'https://manhvd-discord-bot-image.s3.ap-southeast-1.amazonaws.com/C7D41C00-BC3E-4A63-8F7F-1EC5AF0CCD5E.jpg') if event.options['with_picture']
# end

bot.register_application_command(:gay, 'gay vai loz', server_id: ENV.fetch('SLASH_COMMAND_BOT_SERVER_ID'))

bot.application_command(:gay) do |event|
  event.respond(content: 'bạn gay')
  attachment = File.new
  event.send_message()
end

bot.run
