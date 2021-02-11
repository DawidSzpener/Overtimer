require 'rails_helper'

describe 'navigate' do
  before do
    @user = FactoryGirl.create(:user)
    login_as(@user, :scope => :user)
  end

  describe 'index' do
    before do
      visit posts_path
    end

    it 'can be reached succesfully' do
      expect(page.status_code).to eq(200)
    end

    it 'has a title of posts' do
      expect(page).to have_content(/Posts/)
    end

    it 'has a list of posts' do
      post1 = Post.create(date: Date.today, rationale: "Post1", user_id: @user.id)
      post2 = Post.create(date: Date.today, rationale: "Post1", user_id: @user.id)
      visit posts_path

      expect(page).to have_content(/Post1|Post2/)
    end
  end

  describe 'creation' do
    before do
      visit new_post_path
    end

    it 'has a new form that can be reached' do
      expect(page.status_code).to eq(200)
    end

    it 'can be created from new form page' do      
      fill_in 'post[date]', with: Date.today
      fill_in 'post[rationale]', with: "Something"

      click_on 'Save'
    
      expect(page).to have_content('Something')
    end

    it "will have user associated it" do    
      fill_in 'post[date]', with: Date.today
      fill_in 'post[rationale]', with: "User_Ass"

      click_on 'Save'

      expect(User.last.posts.last.rationale).to eq("User_Ass")
    end
  end
end