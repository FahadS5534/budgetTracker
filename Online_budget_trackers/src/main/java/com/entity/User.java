package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user_dtls")

public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	 private int id;
	@Column(name="full_Name") 
    private String fullName;
	@Column(name="email")
    private String email;
	@Column(name="password")
    private String password;
	@Column(name="about")
    private String about;

    // Constructor
    public User(String fullName, String email, String password, String about) {
        this.fullName = fullName;
        this.email = email;
        this.password = password;
        this.about = about;
    }

    @Override
	public String toString() {
		return fullName+email;
	}

	// Getters and setters
    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }
    public User() {
    	
    }
}
