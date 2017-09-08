package com.sap.mes.liquibasedemo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import liquibase.Contexts;
import liquibase.Liquibase;
import liquibase.database.Database;
import liquibase.database.DatabaseFactory;
import liquibase.database.jvm.JdbcConnection;
import liquibase.exception.LiquibaseException;
import liquibase.resource.ClassLoaderResourceAccessor;
import liquibase.util.StringUtils;

@SpringBootApplication
public class LiquibaseDemoApplication {

	static Connection connection = null;

	public static void main(String[] args) throws LiquibaseException, SQLException {
		SpringApplication.run(LiquibaseDemoApplication.class, args);

		System.out.println("\n\n" + StringUtils.repeat("=", 100));
		System.out.println("Liquibase is scanning the changelog and will update the schema to latest...\n");

		LiquibaseDemoApplication.openConnection();
		Database database = DatabaseFactory.getInstance()
				.findCorrectDatabaseImplementation(new JdbcConnection(connection));

		String changeLogFilePath = LiquibaseDemoApplication.class.getClassLoader()
				.getResource("/db/changelog/liquibase-changelog.xml").toString();

		Liquibase liquibase = new liquibase.Liquibase(changeLogFilePath, new ClassLoaderResourceAccessor(), database);

		liquibase.update(new Contexts());
		connection.close();

		System.out.println(StringUtils.repeat("=", 100));
		System.out.println("\nLiquibase has successfully executed all changesets.");
		System.out.println(StringUtils.repeat("=", 100));
	}

	private static void openConnection() {

		Logger LOG = Logger.getGlobal();

		try {
			Class.forName("org.postgresql.Driver");
			connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/liquibasedb", "postgres",
					"password");

		} catch (SQLException | ClassNotFoundException ex) {
			ex.printStackTrace();
			LOG.log(Level.SEVERE, ex.getMessage());

		}
	}
}