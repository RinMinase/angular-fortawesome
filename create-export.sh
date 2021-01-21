#!/bin/bash

##################
# FILE PREPARATION
##################

rm index.d.ts;

##################
# COMMON IMPORTS
##################
echo "import { IconDefinition, IconLookup, IconName, IconPrefix, IconPack } from '@fortawesome/fontawesome-common-types';" >> index.d.ts
echo "export { IconDefinition, IconLookup, IconName, IconPrefix, IconPack } from '@fortawesome/fontawesome-common-types';" >> index.d.ts

###############
# SOLID ICONS
###############
echo "export {" >> index.d.ts;

while IFS= read line; do
    echo $line "as" $line >> index.d.ts
done < ./node_modules/@fortawesome/free-solid-svg-icons/index.d.ts;

# removes last 3 lines
sed -i '$d' index.d.ts
sed -i '$d' index.d.ts
sed -i '$d' index.d.ts

# reappend export lines
echo "    prefix as fasPrefix," >> index.d.ts
echo "    fas," >> index.d.ts

echo "} from '@fortawesome/free-solid-svg-icons';" >> index.d.ts

# format file
sed -i "s/: IconDefinition; as export const fa/ as fas/g" index.d.ts;
sed -i "s/: IconDefinition;/,/g" index.d.ts;
sed -i "s/export const fa/    fa/g" index.d.ts;

#################
# REGULAR ICONS
#################
echo "export {" >> index.d.ts;

while IFS= read line; do
    echo $line >> index.d.ts
done < ./node_modules/@fortawesome/free-regular-svg-icons/index.d.ts;

# removes last 3 lines
sed -i '$d' index.d.ts
sed -i '$d' index.d.ts
sed -i '$d' index.d.ts

# reappend export lines
echo "    prefix as farPrefix," >> index.d.ts
echo "    far," >> index.d.ts

echo "} from '@fortawesome/free-regular-svg-icons';" >> index.d.ts

# format file
sed -i "s/: IconDefinition;/,/g" index.d.ts;
sed -i "s/export const fa/    fa/g" index.d.ts;

#################
# BRAND ICONS
#################
echo "export {" >> index.d.ts;

while IFS= read line; do
    echo $line "as" $line >> index.d.ts
done < ./node_modules/@fortawesome/free-brands-svg-icons/index.d.ts;

# removes last 3 lines
sed -i '$d' index.d.ts
sed -i '$d' index.d.ts
sed -i '$d' index.d.ts

# reappend export lines
echo "    prefix as fabPrefix," >> index.d.ts
echo "    fab," >> index.d.ts

echo "} from '@fortawesome/free-brands-svg-icons';" >> index.d.ts

# format file
sed -i "s/: IconDefinition; as export const fa/ as fab/g" index.d.ts;
sed -i "s/: IconDefinition;/,/g" index.d.ts;
sed -i "s/export const fa/    fa/g" index.d.ts;