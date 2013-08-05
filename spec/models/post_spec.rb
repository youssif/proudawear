require 'spec_helper'
require 'pry'

describe Post do
  before(:each) {
    Post.destroy_all
  }

  let(:post) {
    Post.create(picture: File.open(File.join(Rails.root, 'spec/fixtures/dress.jpeg')))
  }

  let(:user) { mock_model(User) }


  context 'When user has downvoted' do
    before(:each) do
      post.downvote!(user)
    end
    it 'should return zero for the upvote counter' do
      expect(post.upvote_counter).to eq(0)
    end

    it 'should return one for the downvote counter' do
      expect(post.downvote_counter).to eq(1)
    end

  end

  context 'When user has upvoted' do
    before(:each) do
      post.upvote!(user)
    end

    it 'should return zero for the downvote counter' do 
      expect(post.downvote_counter).to eq(0)
    end

    it 'should return one for the upvote counter' do 
      expect(post.upvote_counter).to eq(1)
    end
  end

end
