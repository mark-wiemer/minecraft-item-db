#!/bin/sh
# Print only the links found in the items HTML
# each line in links is e.g. `href="/wiki/Item"`, `href="/wiki/Amethyst_Shard"`
grep -o -P href=\"/wiki/.*?\" items.html > links.sh