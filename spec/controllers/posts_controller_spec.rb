require 'spec_helper'

describe PostsController do
  let(:post) { create(:post) }

  describe 'GET index' do
    before do
      allow(Post).to receive(:order).with('title').and_return(post)
      get :index
    end

    it 'assigns posts' do
      expect(assigns(:posts)).to eq(post)
    end

    it 'renders the index template' do
      expect(response).to render_template('index')
    end
  end

  describe 'GET edit' do
    before do
      allow(Post).to receive(:find).with("#{post.id}").and_return(post)
      get :edit, id: post.id
    end

    it 'assigns post' do
      expect(assigns(:post)).to eq(post)
    end

    it 'renders the edit template' do
      expect(response).to render_template('edit')
    end
  end
end
