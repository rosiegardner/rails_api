require 'rails_helper'


describe 'get a quote route with exception handler', :type => :request do

  before { get '/quotes/200' }

  it 'returns a RecordNotFound error' do
    expect(response).to have_http_status(:not_found)
  end
end

describe 'post a quote route with exception handlers', :type => :request do

  before do
    post '/quotes', params: { :author => "test_author", :content => nil}
  end

  it 'returns a RecordInvalid error' do
    expect(response).to have_http_status(:unprocessable_entity)
  end
end