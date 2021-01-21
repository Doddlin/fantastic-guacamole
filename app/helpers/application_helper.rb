module ApplicationHelper

    def icon_get(name, link_text)
        file = File.read("node_modules/bootstrap-icons/icons/#{name}.svg")
        doc = Nokogiri::HTML::DocumentFragment.parse file
        svg = doc.at_css 'svg'
        img = doc.to_html
        [link_text, " ", img].join.html_safe
    end

end