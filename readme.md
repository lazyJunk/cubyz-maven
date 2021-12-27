# cubyz-mavem

A bunch of builds published to github

Note: This doesn't create fat-jars with all the assets. This is only for dev purposes.

## Versioning:

The build versions are based on the current date and time that is being build.

Example: `12202021-1423`

This translates to `Month` `Day` `Year` and a 24H format `Hour` `Minutes`.
In the example the build was done in 12/20/2021 at 14:23 or 2:23pm in the 12H format.

## Deploy:

Just run the `deploy-cubyz.ps1`.
Currently, only has a Windows Powershell script, but you can translated to other SO's if you want.

## Using the maven repo on your project.

- `VERSION_DATE_HERE`: can be founded in [here](https://lazyjunk.github.io/cubyz-maven/maven/)

```xml
<repositories>
  <repository>
    <id>cubyz-maven</id>
    <url>https://lazyjunk.github.io/cubyz-maven/maven/</url>
  </repository>
</repositories>

<dependencies>
  <dependency>
    <groupId>io.pixelguys.cubyz</groupId>
    <artifactId>cubyz</artifactId>
    <version>VERSION_DATE_HERE</version>
  </dependency>
</dependencies>
```
