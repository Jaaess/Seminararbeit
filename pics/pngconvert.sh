#!/bin/bash - 
#===============================================================================
#
#          FILE: pngconvert.sh
# 
#         USAGE: ./pngconvert.sh 
# 
#   DESCRIPTION: Wandelt alle *.png Dateien im Verzeichnis in EPS Dateien um, diese können in TeX eingebunden werden. Quelle: https://kofler.info/png-in-eps-umwandeln/
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Markus Oesterle (), markus@oeschti.de
#  ORGANIZATION: 
#       CREATED: 13.01.2016 21:09
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

#!/bin/bash
for filename in *.png; do
	epsname=${filename%.png}.eps
  echo "processing $filename $epsname"
  convert $filename eps3:$epsname
	done	

