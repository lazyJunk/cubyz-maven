$currentTime = Get-Date -Format "MMddyyyy-HHmm"
$formattedTime = Get-Date -Format "MM/dd/yyyy HH:mm"

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
cd maven
Add-Content "./readme.md" "-$currentTime : $formattedTime `n"
cd ..
git add maven/*
git commit -m "Deploy $currentTime"
git pull
git push