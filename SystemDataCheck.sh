# System data check. First we show large folders in /, then we get all the large folders in /Library
echo "Checking what's in /"
du -sh /* 2>&1 | grep -v 'Operation not permitted' | grep -v 'Permission denied' | grep -v "Applications" | grep "G	"
echo "Checking what's in /Library"
du -sh /Library/* 2>&1 | grep -v 'Operation not permitted' | grep -v 'Permission denied' | grep "G	"
echo "Checking normal areas (VSTs, Steam, Epic Games, etc). If you see a problem go into the Finder and check it out!"
du -sh /Users/Shared
du -sh /Library/Audio/* 2>&1 | grep -v 'Operation not permitted' | grep -v 'Permission denied' | grep "G	"
du -sh /Users/`id -un`/* 2>&1 | grep -v 'Operation not permitted' | grep -v 'Permission denied' | grep "G	"
du -sh /Users/`id -un`/Library/Application\ Support/* 2>&1 | grep -v 'Operation not permitted' | grep -v 'Permission denied' | grep "G"
echo "That's it! Hopefully this helps"
