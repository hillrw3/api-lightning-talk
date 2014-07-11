require 'faraday'
require 'json'

base_url = 'https://api.github.com'

user_info_endpoint= '/users/hillrw3'
tetris_endpoint = '/search/repositories?q=Tetris+language:ruby&sort=stars'


response = Faraday.get(base_url + tetris_endpoint)


response_body = response.body #returns a string

jj JSON.parse(response_body) #returns a hash/array of hashes

# p response.status

