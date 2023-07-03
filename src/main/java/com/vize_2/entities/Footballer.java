package com.vize_2.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
@Data
public class Footballer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long fid;

    @NotEmpty
    @NotNull
    private String name;

    @NotEmpty
    @NotNull
    private String surname;

    @Min(message = "You must be over 18 years old.", value = 18)
    @NotNull
    private Integer age;

    @Email
    @NotEmpty
    @NotNull
    @Column(unique = true)
    private String email;

    @NotEmpty
    @NotNull
    private String password;



}
