git clone https://github.com/PixelGuys/Cubyz.git
Remove-Item -Force "./Cubyz/pom.xml"
Copy-Item -Path "./pom.xml" -Destination "./Cubyz/pom.xml"
cd "./Cubyz"
mvn clean deploy
cd ..