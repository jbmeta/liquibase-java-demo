# liquibase-java-demo
Spring Boot Maven project to demostrate use of Liquibase from Java code and not by using Spring Boot or Maven Plugin.

This Spring boot project uses Liquibase Java API to execute changelogs. You can specify database connection string inside the LiquibaseDemoApplication.java class.

Master version of the app creates TableOne and inserts some initial data.
Version 2 creates TableTwo and adds some more data in TableOne.

Build and run with theses commands:-
1) mvn clean package
2) java -jar target/name-of-jar.jar
