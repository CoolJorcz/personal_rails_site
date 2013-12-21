ActiveAdmin.register Post do
  index do
    column :title
    column :slug
    column :blurb
    column :created_at
    default_actions
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs 'Details' do
      f.input :title
      f.input :slug
      f.input :blurb
      f.input :category
      f.input :content, :as => :text
    end

    f.inputs "Images" do
      f.input :image, :label => 'Post image', :as => :file
    end
    f.buttons
  end
end
