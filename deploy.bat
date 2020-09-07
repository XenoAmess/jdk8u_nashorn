call mvn -Possrh deploy
call mvn -Possrh org.apache.maven.plugins:maven-gpg-plugin:1.6:sign-and-deploy-file -DpomFile=pom.xml -Dfile=nashorn.jar -DrepositoryId=ossrh -Durl=https://oss.sonatype.org/service/local/staging/deploy/maven2/
call mvn install:install-file -DpomFile=pom.xml -Dfile=nashorn.jar -Durl=https://oss.sonatype.org/service/local/staging/deploy/maven2/ -Possrh
pause