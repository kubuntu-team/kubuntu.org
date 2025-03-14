#!/bin/bash

# Find all markdown files in content directory
find content -type f -name "*.md" | while read -r file; do
    echo "Processing $file..."
    
    # Use perl for string replacements
    # Fix figure shortcodes
    perl -pi -e 's#\{\{< figure src="/images/#{{< figure src="images/#g' "$file"
    
    # Fix featured images in frontmatter
    perl -pi -e 's#featured_image: "/images/#featured_image: "images/#g' "$file"
    
    # Fix various markdown image link formats
    perl -pi -e 's#!\[\]\(/images/#![](images/#g' "$file"
    perl -pi -e 's#!\[([^\]]*)\]\(/images/#![$1](images/#g' "$file"
    perl -pi -e 's#\[!\[([^\]]*)\]\(/images/#[![$1](images/#g' "$file"
    
    echo "Completed processing $file"
done

echo "All files processed" 