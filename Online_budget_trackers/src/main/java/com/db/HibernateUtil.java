package com.db;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.dialect.MySQL5Dialect;
import org.hibernate.dialect.MySQLDialect;

import com.entity.Expense;
import com.entity.User;

import java.util.Properties; // Import java.util.Properties instead of com.sun.xml.fastinfoset.sax.Properties

public class HibernateUtil {

    private static SessionFactory sessionFactory;

    static {
        try {
            // Create the Configuration object
            Configuration configuration = new Configuration();

            Properties properties = new Properties();
            properties.put(Environment.DRIVER, "com.mysql.jdbc.Driver");
            properties.put(Environment.URL, "jdbc:mysql://localhost:3306/expense_tracker");
            properties.put(Environment.USER, "root");
            properties.put(Environment.PASS, "fahad5534");
            properties.put(Environment.STORAGE_ENGINE, "InnoDB");
            // Change dialect if needed (e.g., for PostgreSQL)
            properties.put(Environment.DIALECT, MySQL5Dialect.class.getName());

            properties.put(Environment.HBM2DDL_AUTO, "update");

            // Enable SQL logging
            properties.put(Environment.SHOW_SQL, true);

            // Enable second-level cache
          

            configuration.setProperties(properties);
            configuration.addAnnotatedClass(User.class); // Replace with your entity class
            configuration.addAnnotatedClass(Expense.class);
            StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
                    .applySettings(configuration.getProperties()).build();

            sessionFactory = configuration.buildSessionFactory(serviceRegistry);

        } catch (HibernateException ex) {
            System.err.println("Error creating SessionFactory: " + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }
}
