package hu.fragda.admin.persistence;

import javax.sql.DataSource;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;

@ApplicationScoped
public class OrderRepository {

    @Inject
    DataSource dataSource;

}
