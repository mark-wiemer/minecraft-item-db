# Source

Haha, coding is hard. Here are some manual steps in the meantime:

## Get list of all items

1. Go to https://minecraft.fandom.com/wiki/Category:Items
1. Hit `[Show]` in the items table
1. Inspect element and copy the `div` (or any wrapper of the table, or the table itself)
1. Replace the contents of `items.html` with your copied element
1. Format the file
1. Run `generate_links_from_items.sh`

## Fetch the wiki page for each individual item

1. Open `links.html`
 <!-- 1. So a find and regex replace with these values:
     1. Find: `href="(.*?)"` -->

## Todo

1. Extract the relevant information from the wiki page
1. Add the info to a row in the DB
1. Repeat for all items
