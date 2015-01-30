require 'bundler'
Bundler.require

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
