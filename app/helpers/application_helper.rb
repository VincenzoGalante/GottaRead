module ApplicationHelper
  def Status(article.status)
    if article.status == "to_read"
      puts "<%= link_to "To read", mark_as_done_path(article) %>"
    elsif article.status == "missed"
      puts "<%= link_to "Missed", mark_as_done_path(article) %>"
    elsif article.status == "done"
      puts "<%= link_to "Done", mark_as_done_path(article) %>"
    end
  end
end
