module ActionDispatch::Routing
  class Mapper

    def spotlight_root
      if Spotlight::Exhibit.table_exists?
        root to: "spotlight/home_pages#show", defaults: {id: Spotlight::Exhibit.default.home_page.id} 
      else
        root to: "catalog#index"
      end
    end
  end
end
