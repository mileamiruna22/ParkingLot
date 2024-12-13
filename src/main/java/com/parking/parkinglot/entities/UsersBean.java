package com.parking.parkinglot.entities;

import com.parking.parkinglot.ejb.PasswordBean;
import jakarta.inject.Inject;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

import java.util.Collection;
import java.util.logging.Logger;

public class UsersBean {

    private static final Logger LOG = Logger.getLogger(UsersBean.class.getName());


    @PersistenceContext
    EntityManager entityManager;

    @Inject
    PasswordBean passwordBean;

    public void createUser(String username, String email, String password, Collection<String> groups) {
        LOG.info("createUser");

        User newUser = new User();
        newUser.setUsername(username);
        newUser.setEmail(email);

        newUser.setPassword(passwordBean.convertToSha256(password));

        entityManager.persist(newUser);

        assignGroupsToUser(username, groups);
    }

    private void assignGroupsToUser(String username, Collection<String> groups) {
        LOG.info("assignGroupsToUser");

        for (String group : groups) {
            UserGroup userGroup = new UserGroup();
            userGroup.setUsername(username);
            userGroup.setUserGroup(group);

            entityManager.persist(userGroup);
        }
    }
}
