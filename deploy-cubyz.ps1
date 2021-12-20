$currentTime = Get-Date -Format "MMddyyyy-HHmm"

mkdir target
git clone https://github.com/PixelGuys/Cubyz.git
Remove-Item -Force "./Cubyz/pom.xml"
Copy-Item -Path "./pom.xml" -Destination "./Cubyz/pom.xml"
cd "./Cubyz"
(Get-Content "./pom.xml").replace('replace_this', "$currentTime") | Set-Content "./pom.xml"
mvn clean deploy
cd ..
Remove-Item -Recurse -Force "./Cubyz"
rm target
git add maven/*
git commit -m "Deploy $currentTime"
git pull
git push