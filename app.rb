require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/:bottles' do
  bottles = params[:bottles].to_i
  next_bottles = bottles - 1
  "<a href='/#{next_bottles}'>#{bottles} bottles of beer</a>"
end

# binding.pry


# - The home page `/` should list:
#   - "99 Bottles of beer on the wall"
#   - add a link to take one down
# - The page `/:num_bottles` should show:
#   - "num_bottles Bottles of beer on the wall"
#   - where `:num_bottles` can be any positive integer.
#   - add a link to take one down
# - The page `/0` should show:
#   - "No Bottles of beer on the wall"
#   - do not show a link to take one down
#   - show a link to start over
