cheerio = require 'cheerio'

module.exports = (robot) ->
  robot.respond /http status (.*)/i, (msg) ->
    httpCode = msg.match[1]
    msg
      .http('https://en.wikipedia.org/wiki/List_of_HTTP_status_codes')
      .get() (err, res, body) ->
          $ = cheerio.load(body)
          statusCode = $('#'+httpCode).parent().text()
          if statusCode
            msg.send statusCode
          else
            msg.send "HTTP status code '#{httpCode}' doesn't exist. Ironically, this would be HTTP Error 404."