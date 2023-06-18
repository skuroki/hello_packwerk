require "rails_helper"

RSpec.describe Blog::EntriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/blog/entries").to route_to("blog/entries#index")
    end

    it "routes to #new" do
      expect(get: "/blog/entries/new").to route_to("blog/entries#new")
    end

    it "routes to #show" do
      expect(get: "/blog/entries/1").to route_to("blog/entries#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/blog/entries/1/edit").to route_to("blog/entries#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/blog/entries").to route_to("blog/entries#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/blog/entries/1").to route_to("blog/entries#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/blog/entries/1").to route_to("blog/entries#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/blog/entries/1").to route_to("blog/entries#destroy", id: "1")
    end
  end
end
