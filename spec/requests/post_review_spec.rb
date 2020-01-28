require 'rails_helper'

describe "post a review route", :type => :request do

  before do
    post '/reviews', params: { :author => 'test_author', :content => 'test_content', :country_name => 'test_country_name', :city_name => 'test_city_name', :rating => 4 }
  end

  it 'returns the author name' do
    expect(JSON.parse(response.body)['author']).to eq('test_author')
  end

  it 'returns the review content' do
    expect(JSON.parse(response.body)['content']).to eq('test_content')
  end

  it 'returns the country name' do
    expect(JSON.parse(response.body)['country_name']).to eq('test_country_name')
  end

  it 'returns the city name' do
    expect(JSON.parse(response.body)['city_name']).to eq('test_city_name')
  end

  it 'returns the rating' do
    expect(JSON.parse(response.body)['rating']).to eq(4)
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
