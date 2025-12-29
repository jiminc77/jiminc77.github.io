#!/bin/bash
# Extract header (lines 1-56)
sed -n '1,56p' index.html > index_new.html

# Add the Korean template research entry (lines 57-94)
sed -n '57,94p' index.html >> index_new.html

# Add proper closing for research section and transition to Miscellanea
cat >> index_new.html << 'EOF'

</tbody></table>
          <table style="width:100%;border:0px;border-spacing:0px;border-collapse:separate;margin-right:auto;margin-left:auto;"><tbody>
            <tr>
              <td style="padding:16px;width:100%;vertical-align:middle">
                <h2>Miscellanea</h2>
EOF

# Add the footer sections (Micropapers through end)
sed -n '4474,4573p' index.html >> index_new.html

# Backup original and replace
mv index.html index_backup.html
mv index_new.html index.html
