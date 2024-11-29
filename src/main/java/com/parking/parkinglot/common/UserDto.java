package com.parking.parkinglot.common;

public class UserDto {
    String email;
    String username;
    String password;
    Long id;

    public UserDto(String email, String username, Long id) {
        this.email = email;
        this.username = username;
        this.id = id;
    }
    public String getEmail() {
        return email;
    }

    public String getUsername()
    {
        return username;
    }
    public String getPassword() {
        return password;
    }
    public Long getId() {
        return id;
    }
}
