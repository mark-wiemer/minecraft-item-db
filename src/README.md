# Source

Haha, coding is hard. Here are some manual steps in the meantime:

## Get list of all items

1. Go to https://minecraft.fandom.com/wiki/Category:Items
1. Hit `[Show]` in the items table
1. Inspect element and copy the `div` (or any wrapper of the table, or the table itself)
1. Replace the contents of `items.html` with your copied element
1. Format the file
1. Run `generate_links_from_items.sh`

## Fetch the wiki page for each item

1. Open `links.sh`
1. Do a regex find and replace with these values:
    1. Find: `href="(.*?)"`
    1. Replace: `https://minecraft.fandom.com$1`
    1. Replace all
1. Add a shebang and curl and output to a file of that name in the wiki folder :D (this is so disgusting)
1. Escape parentheses via regex find and replace:
    1. Find: `([()])`
    1. Replace: `\\$1`
    1. Replace all
1. Add `npx prettier --write .` to the end
1. Run the script!

## Extract the relevant information from the wiki page

1. Extract the table row with `Stackable` in it:
    1. `grep "<th>Stackable</th>" -A 3 * > stackable.txt`
    1. Remove duplicate spaces in `stackable.txt`: Find `\s{2,}`, replace with ` ` (single space)
    1. Some files will not have their full stackable info copied as it takes more than 3 formatted lines. For those files, manually copy the stackable information that you need as one long line. Use Find `<p>.*?</p>` and get sections that **don't** match the pattern
1. `grep -P "<p>.*?</p>" stackable.txt > deduped-stackable.md`
1. In `deduped-stackable.md`, do a regex find an replace:
    1. Find: `(.*?).html-\s+<p>(.*?)</p>`
    1. Replace: `| $1 | $2 |`
    1. Replace all
1. Remove any weird Unicode characters
1. Add the table header:
    ```md
    | Item | Stackable (max amount) |
    | ---- | ---------------------- |
    ```
1. Format the file
