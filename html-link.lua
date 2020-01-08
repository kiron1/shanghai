-- Pandoc filter to convert links accordingly.
-- https://pandoc.org/lua-filters.html
-- https://stackoverflow.com/a/49396058

function Link(el)
  el.target = string.gsub(el.target, "%.md", ".html")
  return el
end

