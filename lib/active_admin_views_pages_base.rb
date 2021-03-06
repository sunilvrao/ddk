class ActiveAdmin::Views::Pages::Base < Arbre::HTML::Document

  private

  # Renders the content for the footer
  def build_footer
    div :id => "footer" do
      para "Copyright &copy; #{Date.today.year.to_s}. Powered by #{link_to('CollabRite LLC', 'http://www.collabrite.com')} #{ActiveAdmin::VERSION}".html_safe
    end
  end

end