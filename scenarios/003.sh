#!/bin/bash

mkdir -p /opt/resources
chown vagrant:vagrant /opt/resources
cd /opt/resources

echo 'Fuze Meetings' > fuze.sh
chmod +x fuze.sh

mkdir -p plant

mkdir -p natural/says

touch bic
ln -sf bic pen

echo -e "#!/bin/bash\n\necho 'rahhh'" > rilis.txt
chmod +x rilis.txt

touch faro.rb

echo -e "#!/usr/bin/env ruby\n\nputs 'timmmm'" > xen.file
chmod +x xen.file


echo -e "#!/usr/bin/env ruby'" > webex.exe

mkdir -p splitter
mkdir -p black
