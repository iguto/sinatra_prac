require 'bundler'
Bundler.require

set :bind, '0.0.0.0'

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
  erb :form
end

# postでパラメータの受け取り
post '/check' do
  "#{params[:name]}さんは#{params[:age]}歳です。"
end


# erbの利用
get '/calc' do
  erb :calc
end

# リダイレクトの利用
get '/redirect' do
  redirect '/form'
end
