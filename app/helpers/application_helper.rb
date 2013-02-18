module ApplicationHelper
  def sorted_link(column_name, title = nil)
    title ||= column_name.titleize
    direction = column_name == sort_column && sort_direction == 'asc' ? 'desc' : 'asc'
    link_to title, :sort => column_name, :direction => direction
  end
end
