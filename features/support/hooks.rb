Before do
  helper.create_browser
  helper.goto_site
end

After do
  helper.close_browser
end
