require 'sinatra'
require 'erb'

set :port, 3206
set :bind, '0.0.0.0'

# Enable sessions for form handling
enable :sessions

# Main route - Social Media Profile Editor
get '/profile' do
  erb :profile
end

# Handle form submission with SSTI vulnerability
post '/profile' do
  @message = params[:message]
  @rendered = ""
  
  if @message && !@message.empty?
    begin
      # VULNERABILITY: Direct ERB evaluation of user input
      # This is the exact pattern seen in real vulnerable applications
      template = ERB.new(@message)
      @rendered = template.result(binding)
    rescue => e
      @rendered = "Error processing message: #{e.message}"
    end
  end
  
  erb :profile
end

# Health check endpoint
get '/health' do
  status 200
  "OK"
end

# Root redirect
get '/' do
  redirect '/profile'
end
