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

    it 'has a scope so that only creator sees it' do
      post1 = Post.create(date: Date.today, rationale: "some", user_id: @user.id)
      post2 = Post.create(date: Date.today, rationale: "some", user_id: @user.id)
      other_user = User.create(first_name: "non", last_name: "authorized", email: "nontest@test.com", password: "asdasd", password_confirmation: "asdasd")
      post_from_other_user = Post.create(date: Date.today, rationale: "should not be seen", user_id: other_user.id)

      visit posts_path

      expect(page).to_not have_content(/should not be seen/)
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

  describe "new" do
    it "have a link at homepage" do
      visit root_path
      click_link "new_post_nav"

      expect(page.status_code).to eq(200)
    end
  end

  describe "delete" do
    it "it can be deleted" do
      @post = FactoryGirl.create(:post)
      @post.update(user_id: @user.id)

      visit posts_path
      click_link "delete_post_#{@post.id}_from_index"

      expect(page.status_code).to eq(200)
    end
  end

  describe "edit" do
    before do
      @post = Post.create(date: Date.today, rationale: "some", user_id: @user.id)
    end

    it "can be edited by authorized user" do
      visit edit_post_path(@post)

      fill_in 'post[date]', with: Date.today
      fill_in 'post[rationale]', with: "Edited content"
      click_on 'Save'

      expect(User.last.posts.last.rationale).to eq("Edited content")
    end

    it "cannot be eddited by a non authorised user" do
      logout(:user)

      non_authorized_user = FactoryGirl.create(:non_authorized_user)
      login_as(non_authorized_user, :scope => :user)

      visit edit_post_path(@post)
      expect(current_path).to eq(root_path)
    end
  end
end