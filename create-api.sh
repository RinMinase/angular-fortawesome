#!/bin/bash

if [ -f ./src/lib/public_api.ts ]; then
    rm ./src/lib/public_api.ts;
fi;

##################
# COMMON IMPORTS
##################
echo "export * from '@fortawesome/angular-fontawesome';" >> ./src/lib/public_api.ts
echo "export * from '@fortawesome/fontawesome-svg-core';" >> ./src/lib/public_api.ts

###############
# SOLID ICONS
###############
echo "export {" >> ./src/lib/public_api.ts;

while IFS= read line; do
    echo $line "as" $line >> ./src/lib/public_api.ts
done < ./node_modules/@fortawesome/free-solid-svg-icons/index.d.ts;

# removes last 3 lines
sed -i '$d' ./src/lib/public_api.ts
sed -i '$d' ./src/lib/public_api.ts
sed -i '$d' ./src/lib/public_api.ts

# reappend export lines
echo "    prefix as fasPrefix," >> ./src/lib/public_api.ts
echo "    fas," >> ./src/lib/public_api.ts

echo "} from '@fortawesome/free-solid-svg-icons';" >> ./src/lib/public_api.ts

# format file
sed -i "s/: IconDefinition; as export const fa/ as fas/g" ./src/lib/public_api.ts;
sed -i "s/: IconDefinition;/,/g" ./src/lib/public_api.ts;
sed -i "s/export const fa/    fa/g" ./src/lib/public_api.ts;

#################
# REGULAR ICONS
#################
echo "export {" >> ./src/lib/public_api.ts;

while IFS= read line; do
    echo $line >> ./src/lib/public_api.ts
done < ./node_modules/@fortawesome/free-regular-svg-icons/index.d.ts;

# removes last 3 lines
sed -i '$d' ./src/lib/public_api.ts
sed -i '$d' ./src/lib/public_api.ts
sed -i '$d' ./src/lib/public_api.ts

# reappend export lines
echo "    prefix as farPrefix," >> ./src/lib/public_api.ts
echo "    far," >> ./src/lib/public_api.ts

echo "} from '@fortawesome/free-regular-svg-icons';" >> ./src/lib/public_api.ts

# format file
sed -i "s/: IconDefinition;/,/g" ./src/lib/public_api.ts;
sed -i "s/export const fa/    fa/g" ./src/lib/public_api.ts;

#################
# BRAND ICONS
#################
echo "export {" >> ./src/lib/public_api.ts;

while IFS= read line; do
    echo $line "as" $line >> ./src/lib/public_api.ts
done < ./node_modules/@fortawesome/free-brands-svg-icons/index.d.ts;

# removes last 3 lines
sed -i '$d' ./src/lib/public_api.ts
sed -i '$d' ./src/lib/public_api.ts
sed -i '$d' ./src/lib/public_api.ts

# reappend export lines
echo "    prefix as fabPrefix," >> ./src/lib/public_api.ts
echo "    fab," >> ./src/lib/public_api.ts

echo "} from '@fortawesome/free-brands-svg-icons';" >> ./src/lib/public_api.ts

# format file
sed -i "s/: IconDefinition; as export const fa/ as fab/g" ./src/lib/public_api.ts;
sed -i "s/: IconDefinition;/,/g" ./src/lib/public_api.ts;
sed -i "s/export const fa/    fa/g" ./src/lib/public_api.ts;