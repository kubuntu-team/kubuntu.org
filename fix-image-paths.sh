#!/bin/bash

# Find all markdown files in content directory
find content -type f -name "*.md" | while read -r file; do
    echo "Processing $file..."
    
    # Use perl for string replacements
    perl -pi -e 's#\{\{< figure src="/images/#{{< figure src="images/#g' "$file"
    perl -pi -e 's#featured_image: "/images/#featured_image: "images/#g' "$file"
    perl -pi -e 's#!\[\]\(/images/#![](images/#g' "$file"
    
    echo "Completed processing $file"
done

echo "All files processed" 