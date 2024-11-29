package com.parking.parkinglot.common;

public class UserDto {
    String email;
    String username;

    public UserDto(String email, String username) {
        this.email = email;
        this.username = username;
    }
    public String getEmail() {
        return email;
    }

    public String getUsername()
    {
        return username;
    }
}
