require 'bundler'
Bundler.require

set :bind, '0.0.0.0'
set :port, 9000

# トップページ
get '/' do
  "Hello Sinatra"
end

# トップ以外のページ
get '/hoge' do
  "hoge"
end

# パラメータの受け取り
get '/app/:hoge' do
  "got param: #{params[:hoge]}"
end

# htmlの表示
get '/form' do
"<h2>This is a header!!!!</h2>
this isnt header"
end
