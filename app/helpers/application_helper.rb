module ApplicationHelper
  def main_menu
    menu_items = Refinery::Menu.new(Refinery::Page.menu_pages)

    presenter = Refinery::Pages::MenuPresenter.new(menu_items, self)
    presenter.first_css = 'nav nav-pills'
    presenter.last_css = nil
    presenter.dom_id = 'menu'
    presenter.css = 'menu clearfix'
    presenter.menu_tag = :nav
    presenter.list_tag = :ul
    #presenter.list_tag_css = 'nav nav-pills'
    presenter.list_item_tag = :li
    presenter.selected_css = :selected
    presenter.first_css = :first
    presenter.last_css = :last
    presenter
  end
end