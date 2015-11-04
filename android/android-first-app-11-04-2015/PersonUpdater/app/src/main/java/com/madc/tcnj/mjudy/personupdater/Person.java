package com.madc.tcnj.mjudy.personupdater;

/**
 * Created by mjudy on 11/4/15.
 */
public class Person {
	private String firstName;
	private String lastName;
	private int age;

	public Person(String fName, String lName, int pAge){
		firstName = fName;
		lastName = lName;
		age = pAge;

	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
}
