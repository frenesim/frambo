module ApplicationHelper
  def navigation_menu
    presenter = Refinery::Pages::MenuPresenter.new(refinery_menu_pages, self)
    presenter.css = "navbar-inner"
    presenter.menu_tag = :div
    presenter.list_tag_css = "nav nav-pills"
    presenter.selected_css = "active"
    presenter.first_css = ""
    presenter.last_css = ""
    presenter.max_depth = 1 # prevents dropdown menus, which don't render correctly
    presenter
  end
end