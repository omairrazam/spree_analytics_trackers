spree_version = Gem.loaded_specs['spree_core'].version
lang = I18n.locale
unless spree_version >= Gem::Version.create('3.4.0') && spree_version < Gem::Version.create('3.5.0')
  Deface::Override.new(
    virtual_path: "spree/#{lang.present? ? lang.to_s : DEFAULT_VIEW_LANG}/shared/_products",
    name: 'add_products_searched_to_products_list',
    insert_before: "[data-hook='products_search_results_heading']",
    partial: 'spree/shared/trackers/segment/products_searched.js',
    original: '8b47dddca9dfaaacca3d462459c6c1ef06c09926' 
  )
end
