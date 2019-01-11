# insert loading message
Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                     :original => '767326c1a3a56d3a2d49686ed46001aec4009606',
                     :name => 'append_loading_message',
                     :insert_top => '[data-hook="body"]',
                     :text => %q{<div id="progress"><%= image_tag 'progress.gif' %> <%= Spree.t(:loading) %>...</div>})
